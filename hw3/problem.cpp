#include "problem.h"

void readFromFile(char *filename, data_struct &myStruct, bool setN_Dim)
{
  cout << "loading " << filename << endl;
  FILE *fp = fopen(filename, "r");
  if (fp == NULL)
  {
    cout << "file failed to open successfully!" << endl;
    exit(EXIT_FAILURE);
  }

  char line[80000];
  char *pch;
  int row = 0;
  int col;
  int Xwidth = -1;
  char newline[] = "\n";
  double value;
  vector<double> _y;
  vector<Triplet<double> > tripletList;

  while (fgets(line, 80000, fp))
  {
    pch = strtok(line, " ");
    _y.push_back(atof(pch));

    while (true)
    {
      pch = strtok(NULL, ":");
      if (pch == NULL or strcmp(pch, newline) == 0)
      {
        break;
      }
      col = atoi(pch) - 1;
      pch = strtok(NULL, " ");
      value = atof(pch);
      tripletList.push_back(Triplet<double>(row, col, value));
    }
    Xwidth = max(Xwidth, col + 1);
    row++;
  }
  fclose(fp);

  int Xlength = row;
  myStruct.y = new VectorXd(Xlength);
  myStruct.x = new SparseMatrix<double, RowMajor>(Xlength, Xwidth);

  for (int i = 0; i < Xlength; i++)
  {
    (*myStruct.y)[i] = _y[i];
  }
  myStruct.x->setFromTriplets(tripletList.begin(), tripletList.end());

  if (setN_Dim)
  {
    N = Xlength;
    dim = Xwidth;
    cout << "dimensions of x: " << N << "*" << dim << endl;
  }
}

//due to alpha=0, we actually only need to compute Q_diag, no need to compute w
void construct_W_R_diag(SparseMatrix<double, RowMajor> &x, VectorXd &y, VectorXd &alpha, VectorXd &R_diag, VectorXd &w)
{
  for (int i = 0; i < N; i++)
  {
    double sum = 0.0;
    //double yi_ai =  y[i] * alpha[i];
    for (SparseMatrix<double, RowMajor>::InnerIterator it(x, i); it; ++it)
    {
      sum += it.value() * it.value();
      //w[it.col()] += yi_ai * it.value();
    }
    R_diag[i] = sum;
  }
}

void computeErrors(SparseMatrix<double, RowMajor> &x, VectorXd &y, SparseMatrix<double, RowMajor> &xt, VectorXd &yt, VectorXd &alpha, VectorXd &R_diag, VectorXd &w)
{
  double sum = 0.0;
  for (int i = 0; i < N; i++)
  {
    double dot_prod = 0.0;
    for (SparseMatrix<double, RowMajor>::InnerIterator it(x, i); it; ++it)
    {
      dot_prod += w[it.col()] * it.value();
    }
    sum += pow(max(0.0, 1 - y[i] * dot_prod), 2);
  }
  double primal = 0.5 * w.dot(w) + C * sum;
  cout << "primal value: " << primal << " ";

  double dualValue = (0.5 * w.dot(w)) + ((1 / (4 * C)) * alpha.dot(alpha)) - alpha.sum();
  cout << "dual value: " << dualValue << " ";

  VectorXd temp_w(dim); temp_w.setZero();
  for (int i = 0; i < N; i++ )
  {
    double yi_ai = y[i] * alpha[i];
    for (SparseMatrix<double, RowMajor>::InnerIterator it(x, i); it; ++it)
    {
      temp_w[it.col()] += yi_ai * it.value();
    }
  }
  double error = (temp_w - w).norm();
  cout << "||sum{y_i*a_i*x_i}-w||: " << error << " ";


  double correct = 0;
  for (int i = 0; i < xt.outerSize(); i++ )
  {
    double decision = 0.0;
    for (SparseMatrix<double, RowMajor>::InnerIterator it(xt, i); it; ++it)
    {
      decision += w[it.col()] * it.value();
    }
    if ((decision < 0.0 and yt[i] < 0.0) or (decision > 0.0 and yt[i] > 0.0))
    {
      correct++;
    }
  }
  double accuracy = correct / xt.outerSize();
  cout << "accuracy: " << accuracy << endl;
}

void cd_svm(data_struct &trainStruct, data_struct &testStruct)
{
  vector<int> permutation;
  for (int i = 0; i < N; i++)
  {
    permutation.push_back(i);
  }

  SparseMatrix<double, RowMajor> x = *(trainStruct.x);
  VectorXd y = *(trainStruct.y);
  SparseMatrix<double, RowMajor> xt = *(testStruct.x);
  VectorXd yt = *(testStruct.y);
  VectorXd alpha(N); alpha.setZero();
  VectorXd w(dim); w.setZero();
  VectorXd R_diag(N);
  double D = 1 / (2 * C);

  //preprocess w and diagonal values of R: R_diag=Q_diag + 1/2C
  construct_W_R_diag(x, y, alpha, R_diag, w);
  R_diag = R_diag.array() + D;

  double totalElapsed = 0.0;
  for (int k = 0; k < outerIter; k++)
  {
    double start = omp_get_wtime();
    random_shuffle(permutation.begin(), permutation.end());
    #pragma omp parallel for schedule(dynamic, chunkSize)
    for (int _i = 0; _i < N; _i++)
    {
      int i = permutation[_i];

      //calculate gradient for ith dimension
      double sum = 0.0;
      for (SparseMatrix<double, RowMajor>::InnerIterator it(x, i); it; ++it)
      {
        sum += w[it.col()] * it.value();
      }
      double G = (y[i] * sum) - 1 + (D * alpha[i]);

      double PG = G;
      if (alpha[i] == 0.0)
      {
        PG = min(G, 0.0);
      }

      if (PG != 0.0)
      {
        //update alpha
        double old_alpha = alpha[i];

        alpha[i] = max(alpha[i] - G / R_diag[i], 0.0);

        //update w
        for (SparseMatrix<double, RowMajor>::InnerIterator it(x, i); it; ++it)
        {
          //comment this out to disable locking
          #pragma omp atomic
          w[it.col()] += (alpha[i] - old_alpha) * y[i] * it.value();
        }
      }

    }
    totalElapsed += omp_get_wtime() - start;
    cout << "iter " << k + 1 << " wall time: " << totalElapsed << " ";
    computeErrors(x, y, xt, yt, alpha, R_diag, w);
  }
}

void experiments(char *trainFile, char *testFile)
{
  outerIter = 20; chunkSize = 100; C = 0.1;
  int threads[] = {1, 8, 16};

  data_struct trainStruct; data_struct testStruct;
  readFromFile(trainFile, trainStruct, true);
  readFromFile(testFile, testStruct, false);

  for (int i = 0; i < 3; i++)
  {
    cout << "number of threads: " << threads[i] << endl;
    omp_set_num_threads(threads[i]);
    cd_svm(trainStruct, testStruct);
  }

  deleteR(trainStruct);
  deleteR(testStruct);
}

int main(int argc, char **argv)
{
  char key[] = "experiments";
  char *trainFile; char *testFile;
  if (argc == 5)
  {
    C = atof(argv[1]);
    numThreads = atoi(argv[2]);
    trainFile = argv[3];
    testFile = argv[4];
  }
  else if (argc == 2 and strcmp(argv[1], key) == 0)
  {
    char trainFile[] = "data/covtype.tr";
    char testFile[] = "data/covtype.t";
    experiments(trainFile, testFile);
    char trainFile2[] = "data/rcv1.tr";
    char testFile2[] = "data/rcv1.t";
    experiments(trainFile2, testFile2);
    exit(EXIT_SUCCESS);
  }
  else
  {
    cout << "usage: ./cd-svm C nr_threads traindata testdata" << endl;
    exit(EXIT_FAILURE);
  }

  outerIter = 20; chunkSize = 100;
  omp_set_num_threads(numThreads);

  data_struct trainStruct; data_struct testStruct;

  readFromFile(trainFile, trainStruct, true);
  readFromFile(testFile, testStruct, false);

  cd_svm(trainStruct, testStruct);

  deleteR(trainStruct);
  deleteR(testStruct);
}

void deleteR(data_struct &myStruct)
{
  delete myStruct.y;
  delete myStruct.x;
}