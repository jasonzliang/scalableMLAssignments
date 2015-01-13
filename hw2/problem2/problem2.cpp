#include "problem2.h"

void readMetafile(string baseDir)
{
  string metaFile = baseDir + "/meta";
  ifstream infile(metaFile.c_str());
  string tokenA, tokenB;
  infile >> tokenA >> tokenB;
  U = atoi(tokenA.c_str()); M = atoi(tokenB.c_str());
  infile >> tokenA >> tokenB;
  numTrain = atoi(tokenA.c_str()); trainFile = tokenB;
  infile >> tokenA >> tokenB;
  numTest = atoi(tokenA.c_str()); testFile = tokenB;
}

void readSparseMatrix(string filename, int numLines, R &myStruct)
{
  cout << "loading " << filename.c_str() << endl;
  myStruct.mat = new SparseMatrix<double>(U, M);
  myStruct.R_row = new VectorXd[U];
  myStruct.R_row_i = new vector<int>[U];
  myStruct.R_col = new VectorXd[M];
  myStruct.R_col_i = new vector<int>[M];

  vector<double> _R_row[U];
  vector<double> _R_col[M];

  vector<Triplet<double> > tripletList;
  tripletList.reserve(numLines);

  ifstream infile(filename.c_str());
  string row, col, rating;
  int col_, row_;
  double rating_;
  for (int i = 0; i < numLines; i++)
  {
    if (i % 1000000 == 0 and i > 0)
    {
      cout << "loaded " << i << " lines!" << endl;
    }
    infile >> row >> col >> rating;
    row_ = atoi(row.c_str()) - 1;
    col_ = atoi(col.c_str()) - 1;
    rating_ = atof(rating.c_str());

    // cout << row_ << " " << col << " " << rating_ << endl;
    tripletList.push_back(Triplet<double>(row_, col_, rating_));
    _R_col[col_].push_back(rating_);
    myStruct.R_col_i[col_].push_back(row_);

    _R_row[row_].push_back(rating_);
    myStruct.R_row_i[row_].push_back(col_);
  }

  for (int i = 0; i < U; i++)
  {
    int n = _R_row[i].size();
    myStruct.R_row[i] = VectorXd(n);
    for (int j = 0; j < n; j++)
    {
      myStruct.R_row[i][j] = _R_row[i][j];
    }
  }

  for (int i = 0; i < M; i++)
  {
    int n = _R_col[i].size();
    myStruct.R_col[i] = VectorXd(n);
    for (int j = 0; j < n; j++)
    {
      myStruct.R_col[i][j] = _R_col[i][j];
    }
  }
  myStruct.mat->setFromTriplets(tripletList.begin(), tripletList.end());
  infile.close();
}

/*
memory inefficient way of determining values of R = U^T * M by storing entire R in memory
*/
void getRMSE(SparseMatrix<double> *testMat, MatrixXd &users, MatrixXd &movies, double &RMSE)
{
  double matMemorySize = ((double) users.cols() * (double) movies.cols() * 8.0) / (1024.0 * 1024.0 * 1024.0);
  if (matMemorySize > max_mem_gigs)
  {
    getRMSE2(testMat, users, movies, RMSE);
    return;
  }

  SparseMatrix<double> tempMat = *testMat;
  MatrixXd R_s = users.transpose() * movies;
  RMSE = 0.0;
  // int c = 0;
  for (int k = 0; k < tempMat.outerSize(); ++k)
  {
    for (SparseMatrix<double>::InnerIterator it(tempMat, k); it; ++it)
    {
      RMSE += pow(it.value() - R_s(it.row(), it.col()), 2);
      // c++;
    }
  }
  // assert (c == numTest);
  RMSE = sqrt(RMSE / numTest);
}

/*
memory efficient way of determining values of R = U^T * M by doing dot_product(U.col(i), M,col(j))
*/
void getRMSE2(SparseMatrix<double> *testMat, MatrixXd &users, MatrixXd &movies, double &RMSE)
{
  SparseMatrix<double> tempMat = *testMat;
  RMSE = 0.0;
  // int c = 0;
  for (int k = 0; k < tempMat.outerSize(); ++k)
  {
    for (SparseMatrix<double>::InnerIterator it(tempMat, k); it; ++it)
    {
      double r_value = users.col(it.row()).dot(movies.col(it.col()));
      RMSE += pow(it.value() - r_value, 2);
      // c++;
    }
  }
  // assert (c == numTest);
  RMSE = sqrt(RMSE / numTest);
}

void ALS(R &ratingsStruct, MatrixXd &users, MatrixXd &movies, SparseMatrix<double> *testMat)
{
  int M_chunksize = M / (numThreads * chunkScaleFactor) + 1;
  int U_chunksize = U / (numThreads * chunkScaleFactor) + 1;
  double RMSE;
  double totalElapsed = 0.0;
  MatrixXd lambda_I = MatrixXd::Identity(K, K).array() * lambda;
  for (int i = 0; i < numIter; i++)
  {
    double start = omp_get_wtime();

    // fix users, solve for movies
    #pragma omp parallel for schedule(dynamic, M_chunksize)
    for (int j = 0; j < M; j++)
    {
      int n = ratingsStruct.R_col_i[j].size();
      if (n == 0)
      {
        movies.col(j).setZero();
      }
      else
      {
        MatrixXd u_j(K, n);
        for (int k = 0; k < n; k++)
        {
          u_j.col(k) = users.col(ratingsStruct.R_col_i[j][k]);
          // for (int t=0; t<K; t++) {
          //   u_j(k, t) = users(ratingsStruct.R_col_i[j][k], t);
          // }
        }
        movies.col(j) = (u_j * u_j.transpose() + lambda_I).inverse() * (u_j * ratingsStruct.R_col[j]);
      }
    }

    // fix movies, solve for users
    #pragma omp parallel for schedule(dynamic, U_chunksize)
    for (int j = 0; j < U; j++)
    {
      int n = ratingsStruct.R_row_i[j].size();
      if (n == 0)
      {
        users.col(j).setZero();
      }
      else
      {
        MatrixXd m_j(K, n);
        for (int k = 0; k < n; k++)
        {
          m_j.col(k) = movies.col(ratingsStruct.R_row_i[j][k]);
          // for (int t=0; t<K; t++) {
          //   m_j(k, t) = movies(ratingsStruct.R_row_i[j][k], t);
          // }
        }
        users.col(j) = (m_j * m_j.transpose() + lambda_I).inverse() * (m_j * ratingsStruct.R_row[j]);
      }
    }
    totalElapsed += omp_get_wtime() - start;
    getRMSE2(testMat, users, movies, RMSE);

    cout << "iter " << i + 1 << " walltime " << totalElapsed << " rmse " << RMSE << endl;
  }
}

void deleteR(R &myStruct)
{
  delete myStruct.mat;
  delete[] myStruct.R_col;
  delete[] myStruct.R_col_i;
  delete[] myStruct.R_row;
  delete[] myStruct.R_row_i;
}

int main(int argc, char **argv)
{
  if (argc == 5)
  {
    K = atoi(argv[1]);
    lambda = atoi(argv[2]);
    numThreads = atoi(argv[3]);
    baseDir = argv[4];
  }
  else
  {
    cout << "usage: ./omp-als rank lambda nr_threads data_dir" << endl;
    exit(EXIT_FAILURE);
  }
  //  K = 10;
  //  lambda = 1.0;
  //  omp_set_num_threads(8);
  //  baseDir = "data/small";

  numIter = 5;
  chunkScaleFactor = 800;
  max_mem_gigs = 1.0;
  tuneChunkSize = false;
  //omp_set_dynamic(0);
  omp_set_num_threads(numThreads);
  readMetafile(baseDir);
  R trainingDataStruct; R testingDataStruct;
  readSparseMatrix(baseDir + "/" + trainFile, numTrain, trainingDataStruct);
  readSparseMatrix(baseDir + "/" + testFile, numTest, testingDataStruct);

  MatrixXd users = MatrixXd::Random(K, U);
  users = users.array() + 1.0;
  users = users.array() * 0.5;

  MatrixXd movies = MatrixXd::Random(K, M);
  movies = movies.array() + 1.0;
  movies = movies.array() * 0.5;

  double RMSE;
  getRMSE2(testingDataStruct.mat, users, movies, RMSE);
  cout << "start with rmse " << RMSE << " nr_threads " << numThreads << endl;

  if (not tuneChunkSize)
  {
    ALS(trainingDataStruct, users, movies, testingDataStruct.mat);
  }
  else
  {
    int maxSize = 1000;
    numIter = 1; chunkScaleFactor = 20;
    while (chunkScaleFactor <= maxSize)
    {
      int M_chunksize = M / (numThreads * chunkScaleFactor) + 1;
      int U_chunksize = U / (numThreads * chunkScaleFactor) + 1;
      cout << "chunkScaleFactor " << chunkScaleFactor << " M_chunksize " << M_chunksize << " U_chunksize " << U_chunksize << " ";
      ALS(trainingDataStruct, users, movies, testingDataStruct.mat);
      chunkScaleFactor += 20;
    }
  }
  deleteR(trainingDataStruct);
  deleteR(testingDataStruct);
}
