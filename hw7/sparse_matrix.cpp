#include "sparse_matrix.h"

sparseMatrix::sparseMatrix(int nRows, int nCols, int numEntries):
  nRows(nRows),
  nCols(nCols),
  numEntries(numEntries)
{
  chunkSize = 100;

  values = new double[numEntries];
  col_indices = new int[numEntries];
  row_start_pos = new int[nRows];
  row_length = new int[nRows];
  for (int i = 0; i < nRows; i++)
  {
    row_start_pos[i] = -1;
    row_length[i] = 0;
  }
}

sparseMatrix::sparseMatrix(char *filename, vector<double> &labels, vector<triplet> &tripletList)
{
  chunkSize = 100;

  cout << "loading " << filename << endl;
  FILE *fp = fopen(filename, "r");

  char line[80000];
  char *pch;
  int row = 0;
  int col;
  int Xwidth = -1;
  char newline[] = "\n";
  double value;

  while (fgets(line, 80000, fp))
  {
    pch = strtok(line, " ");
    labels.push_back(atof(pch));

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

      triplet myTriplet;
      myTriplet.row = row;
      myTriplet.col = col;
      myTriplet.value = value;
      tripletList.push_back(myTriplet);
    }
    Xwidth = max(Xwidth, col + 1);
    row++;
  }
  fclose(fp);

  cout << "finished loading, converting to sparse matrix format" << endl;

  nRows = row;
  nCols = Xwidth;
  numEntries = (int) tripletList.size();

  values = new double[numEntries];
  col_indices = new int[numEntries];
  row_start_pos = new int[nRows];
  row_length = new int[nRows];
  for (int i = 0; i < nRows; i++)
  {
    row_start_pos[i] = -1;
    row_length[i] = 0;
  }

  row_start_pos[0] = 0;
  int currentRow = 0;
  int length = 0;

  for (int i = 0; i < numEntries; i++)
  {
    triplet myTriplet = tripletList[i];

    if (myTriplet.row != currentRow)
    {
      row_length[currentRow] = length;
      row_start_pos[myTriplet.row] = i;

      currentRow = myTriplet.row;
      length = 0;
    }

    values[i] = myTriplet.value;
    col_indices[i] = myTriplet.col;
    length++;
  }
  row_length[currentRow] = length;

  cout << "conversion successful, rows: " << nRows << ", cols: " << nCols << ", numEntries: " << numEntries << endl;
}

sparseMatrix::sparseMatrix(char *dataFile, char *metaFile)
{
  chunkSize = 100;

  cout << "loading " << dataFile << endl;
  readMetafile(metaFile);
  values = new double[numEntries];
  col_indices = new int[numEntries];
  row_start_pos = new int[nRows];
  row_length = new int[nRows];
  for (int i = 0; i < nRows; i++)
  {
    row_start_pos[i] = -1;
    row_length[i] = 0;
  }

  FILE *fp = fopen(dataFile, "r");

  char line[200];
  char *pch;
  int row, col;
  double value = 1.0;
  int counter = 0;

  row_start_pos[0] = 0;
  int currentRow = 0;
  int length = 0;

  while (fgets(line, 200, fp))
  {
    if (counter % 10000000 == 0 and counter > 0)
    {
      cout << "loaded " << counter << " lines!" << endl;
    }

    pch = strtok(line, "\t");
    col = atoi(pch) - 1;

    pch = strtok(NULL, "\n");
    row = atoi(pch) - 1;
    // cout << col << " " << row << endl;
    if (row != currentRow)
    {
      row_length[currentRow] = length;
      length = 0;
      currentRow = row;
      row_start_pos[row] = counter;
    }

    values[counter] = value;
    col_indices[counter] = col;
    counter++; length++;
  }
  row_length[currentRow] = length;
  fclose(fp);

  assert (counter == numEntries);
  cout << "matrix loaded successfully!" << endl;
}

void sparseMatrix::readMetafile(char *metaFile)
{
  ifstream infile(metaFile);
  string tokenA, tokenB, tokenC;
  infile >> tokenA >> tokenB >> tokenC;
  nRows = atof(tokenA.c_str());
  nCols = atof(tokenB.c_str());
  numEntries = atof(tokenC.c_str());
  infile.close();
  cout << "numEntries: " << numEntries << " rows: " << nRows << " cols: " << nCols << endl;
}

sparseMatrix::~sparseMatrix()
{
  delete[] values;
  delete[] row_start_pos;
  delete[] row_length;
  delete[] col_indices;
}

void sparseMatrix::multiply(double *x, double *y)
{
  #pragma omp parallel for schedule(dynamic, chunkSize)
  for (int i = 0; i < nRows; i++)
  {
    double sum = 0.0;
    int p = row_start_pos[i];
    int r = row_length[i];
    for (int j = 0; j < r; j++)
    {
      // int value = values[p + j];
      // int col_index = col_indices[p + j];
      sum += x[col_indices[p + j]] * values[p + j];
    }
    y[i] = sum;
  }
}

//**********logistic regression methods**********

bool triplet_sort(triplet a, triplet b)
{
  if (a.col != b.col)
  {
    return a.col < b.col;
  }
  else
  {
    return a.row < b.row;
  }

}

void sparseMatrix::setTranspose(vector<triplet> &tripletList)
{
  cout << "setting transpose using tripletlist!" << endl;
  sort(tripletList.begin(), tripletList.end(), triplet_sort);
  // for (int i = 0; i < 100; i++)
  // {
  //   triplet myTriplet = tripletList[i];
  //   cout << myTriplet.row << " " << myTriplet.col << " " << myTriplet.value << endl;
  // }

  row_start_pos[0] = 0;
  int currentRow = 0;
  int length = 0;

  for (int i = 0; i < numEntries; i++)
  {
    triplet myTriplet = tripletList[i];

    if (myTriplet.col != currentRow)
    {
      row_length[currentRow] = length;
      row_start_pos[myTriplet.col] = i;

      currentRow = myTriplet.col;
      length = 0;
    }

    values[i] = myTriplet.value;
    col_indices[i] = myTriplet.row;
    length++;
  }
  row_length[currentRow] = length;

  // for (int i = 0; i < 6 ; i++)
  // {
  //   int p = row_start_pos[i];
  //   int r = row_length[i];
  //   for (int j = 0; j < 10; j++)
  //   {
  //     double value = values[p + j];
  //     int col_index = col_indices[p + j];
  //     cout << col_index << ":" << value << " ";
  //   }
  //   cout << endl;
  // }
}

double sparseMatrix::dotProduct(int row, double *w)
{
  int p = row_start_pos[row];
  int r = row_length[row];
  double sum = 0.0;
  for (int j = 0; j < r; j++)
  {
    // int value = values[p + j];
    // int col_index = col_indices[p + j];
    sum += w[col_indices[p + j]] * values[p + j];
  }
  return sum;
}

//compute gradient and also diagonal matrix D
void sparseMatrix::computeGradient_d_ii(double *gradient, double *w, double *d_ii, vector<double> &y, double lambda)
{
  //#pragma omp parallel for schedule(static, 500)
  for (int i = 0; i < nCols; i++)
  {
    gradient[i] = 0.0;
  }

  #pragma omp parallel for schedule(dynamic, chunkSize)
  for (int i = 0; i < nRows; i++)
  {
    double temp = 1.0 / (1.0 + exp(-1 * y[i] * dotProduct(i, w)));
    // cout << dotProduct(i, w) << endl;
    // cout << temp << endl;
    d_ii[i] = temp * (1 - temp);

    int p = row_start_pos[i];
    int r = row_length[i];
    for (int j = 0; j < r; j++)
    {
      int col_index = col_indices[p + j];
      double update = (temp - 1) * y[i] * values[p + j];

      #pragma omp atomic
      gradient[col_index] += update;
    }
  }

  //#pragma omp parallel for schedule(static, 500)
  for (int i = 0; i < nCols; i++)
  {
    gradient[i] = w[i] + (gradient[i] * lambda);
  }
}

//obj function value f(w)
double sparseMatrix::objectiveError(double *w, vector<double> &y, double lambda)
{
  double error = 0.0;
  #pragma omp parallel for schedule(dynamic, chunkSize) reduction(+:error)
  for (int i = 0; i < nRows; i++)
  {
    double __error = log(1.0 + exp(-1 * y[i] * dotProduct(i, w)));
    error += __error;
  }
  error *= lambda;

  double w_dot_w = 0.0;

  //#pragma omp parallel for schedule(static, 500) reduction(+:w_dot_w)
  for (int i = 0; i < nCols; i++)
  {
    w_dot_w += w[i] * w[i];
  }
  return error + 0.5 * w_dot_w;
}

void sparseMatrix::testAccuracy(double *w, vector<double> &y)
{
  double correct = 0;
  for (int i = 0; i < nRows; i++)
  {
    if ((dotProduct(i, w) > 0 and y[i] > 0) or (dotProduct(i, w) <= 0 and y[i] <= 0))
    {
      correct++;
    }
  }
  cout << "test accuracy: " << correct / nRows << " (" << (int) correct << "/" << nRows << ")" << endl;
}

//**********pagerank methods**********

void sparseMatrix::computeD_ii(double *d_ii)
{
  #pragma omp parallel for schedule(dynamic, 100)
  for (int i = 0; i < nRows; i++)
  {
    double sum = 0.0;
    int p = row_start_pos[i];
    int r = row_length[i];
    for (int j = 0; j < r; j++)
    {
      sum += values[p + j];
    }
    d_ii[i] = 1.0 / sum;
  }
}

void sparseMatrix::computeP_t(double *d_ii, double *newvalues, double alpha)
{
  #pragma omp parallel for schedule(dynamic, 100)
  for (int i = 0; i < nRows; i++)
  {
    int p = row_start_pos[i];
    int r = row_length[i];

    for (int j = 0; j < r; j++)
    {
      newvalues[p + j] = (1 - alpha) * d_ii[col_indices[p + j]] * values[p + j];
    }
  }

  delete[] values;
  values = newvalues;
}

void sparseMatrix::multP_t(double *x, double *y, double alphavr_sum)
{
  #pragma omp parallel for schedule(dynamic, 100)
  for (int i = 0; i < nRows; i++)
  {
    double sum = 0.0;
    int p = row_start_pos[i];
    int r = row_length[i];
    for (int j = 0; j < r; j++)
    {
      // int value = values[p + j];
      // int col_index = col_indices[p + j];
      sum += x[col_indices[p + j]] * values[p + j];
    }
    y[i] = sum + alphavr_sum;
  }
}