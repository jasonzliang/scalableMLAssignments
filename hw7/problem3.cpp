#include "sparse_matrix.h"
#include <algorithm>

using namespace std;

double lambda = 1.0;
int numIter = 10;
int n, dim, nnz;

// void substractVector(double *s, double *x, double *y, int n)
// {
//   for (int i = 0; i < n; i++)
//   {
//     s[i] = x[i] - y[i];
//   }
// }

// void addVector(double *s, double *x, double *y, int n)
// {
//   for (int i = 0; i < n; i++)
//   {
//     s[i] = x[i] + y[i];
//   }
// }

// void scalarProduct(double *x, double scalar, double *y, int n)
// {
//   for (int i = 0; i < n; i++)
//   {
//     x[i] = scalar * y[i];
//   }
// }

void printArray(double *x, int nSize)
{
  for (int i = 0; i < nSize; i++)
  {
    cout << x[i] << " ";
  }
  cout << endl;
}

double norm(double *x, int nSize)
{
  double sum = 0.0;
  //#pragma omp parallel for schedule(dynamic, 500) reduction(+:sum)
  for (int i = 0; i < nSize; i++)
  {
    sum += x[i] * x[i];
  }
  return sqrt(sum);
}

double dotProduct(double *x, double *y, int nSize)
{
  double sum = 0.0;
  //#pragma omp parallel for schedule(dynamic, 500) reduction(+:sum)
  for (int i = 0; i < nSize; i++)
  {
    sum += x[i] * y[i];
  }
  return sum;
}

//compute A*x, where A is hessian
void multA(sparseMatrix &X, sparseMatrix &X_t, double *d_ii, double *bufferN, double *x, double *y)
{
  X.multiply(x, bufferN);
  // printArray(bufferN, 1000);

  #pragma omp parallel for schedule(dynamic, 1000)
  for (int i = 0; i < n; i++)
  {
    bufferN[i] *= d_ii[i];
  }
  X_t.multiply(bufferN, y);
  // printArray(y, 10);
  //#pragma omp parallel for schedule(dynamic, 500)
  for (int i = 0; i < dim; i++)
  {
    y[i] = x[i] + (lambda * y[i]);
  }
}

void conjugateGradient(sparseMatrix &X, sparseMatrix &X_t, double *d_ii, double *x, double *b)
{
  double *r = new double[dim];
  double *r_new = new double[dim];
  double *p = new double[dim];

  double *bufferN = new double[n];
  double *bufferDim = new double[dim];

  //#pragma omp parallel for schedule(dynamic, 500)
  for (int i = 0; i < dim; i++)
  {
    x[i] = 0;
  }

  multA(X, X_t, d_ii, bufferN, x, r);

  //#pragma omp parallel for schedule(dynamic, 500)
  for (int i = 0; i < dim; i++)
  {
    r[i] = -1 * b[i] - r[i];
    p[i] = r[i];
  }

  double r_0_norm = norm(r, dim);
  // cout << "r_O_norm: " << r_0_norm << endl;
  double b_k, a_k, r_self_dot, error;

  double counter = 0;

  while (true)
  {
    multA(X, X_t, d_ii, bufferN, p, bufferDim);
    r_self_dot = dotProduct(r, r, dim);
    a_k = r_self_dot / (dotProduct(p, bufferDim, dim) + 1e-12);

    //#pragma omp parallel for schedule(dynamic, 500)
    for (int i = 0; i < dim; i++)
    {
      x[i] = x[i] + a_k * p[i];
      r_new[i] = r[i] - a_k * bufferDim[i];
    }

    error = norm(r_new, dim) / (r_0_norm + 1e-12);
    if (error < 0.01)
    {
      // cout << "conjugateGradient solved X with " << counter + 1 << " iterations!" << endl;
      break;
    }

    b_k = dotProduct(r_new, r_new, dim) / r_self_dot;

    //#pragma omp parallel for schedule(dynamic, 500)
    for (int i = 0; i < dim; i++)
    {
      p[i] = r_new[i] + b_k * p[i];
      r[i] = r_new[i];
    }

    counter++;
  }

  delete[] r;
  delete[] r_new;
  delete[] p;

  delete[] bufferN;
  delete[] bufferDim;
}

int solveLogisticRegression(sparseMatrix &X, sparseMatrix &X_t, vector<double> &y, sparseMatrix &test, vector<double> &testY)
{
  double *gradient = new double[dim];
  double *w = new double[dim];
  double *d_ii = new double[n];
  double *dir = new double[dim];

  double *bufferDim = new double[dim];

  for (int i = 0; i < dim; i++)
  {
    w[i] = 0.0;
  }

  double error = X.objectiveError(w, y, lambda);
  double elapsedTime = 0.0;
  cout << "outer iteration: 0 walltime: 0 error: " << error << " ";
  test.testAccuracy(w, y);

  for (int k = 0; k < numIter; k++)
  {
    double start = omp_get_wtime();
    X.computeGradient_d_ii(gradient, w, d_ii, y, lambda);
    // cout << "gradient norm: " << norm(gradient, dim) << endl;
    conjugateGradient(X, X_t, d_ii, dir, gradient);

    double alpha = 1.0;
    while (true)
    {
      // cout << alpha << endl;
      //#pragma omp parallel for schedule(dynamic, 500)
      for (int i = 0; i < dim; i++)
      {
        bufferDim[i] = w[i] + alpha * dir[i];
      }
      double error_new1 = X.objectiveError(bufferDim, y, lambda);
      double error_new2 = error + 0.01 * alpha * dotProduct(dir, gradient, dim);

      if (error_new1 < error_new2)
      {
        break;
      }
      alpha /= 2.0;
    }

    //#pragma omp parallel for schedule(dynamic, 500)
    for (int i = 0; i < dim; i++)
    {
      w[i] = bufferDim[i];
    }
    elapsedTime += omp_get_wtime() - start;

    error = X.objectiveError(w, y, lambda);

    cout << "outer iteration: " << k + 1 << " walltime: " << elapsedTime << " obj error: " << error << " ";
    test.testAccuracy(w, testY);
  }

  delete[] gradient;
  delete[] w;
  delete[] d_ii;
  delete[] dir;

  delete[] bufferDim;
}

int main(int argc, char **argv)
{
  char trainFile[256];
  char testFile[256];

  if (argc != 4 and argc != 6)
  {
    cout << "usage 1: ./problem3 numThreads trainFile testFile" << endl;
    cout << "usage 2: ./problem3 numThreads trainFile testFile lambda numIter" << endl;
    exit(-1);
  }
  else
  {
    if (argc == 4)
    {
      omp_set_num_threads(atoi(argv[1]));
      strcpy(trainFile, argv[2]);
      strcpy(testFile, argv[3]);
    }
    if (argc == 6)
    {
    	lambda = atof(argv[4]);
    	numIter = atoi(argv[5]);
    }
  }

  vector<double> y;
  vector<triplet> tripletList;
  sparseMatrix X(trainFile, y, tripletList);
  X.setChunkSize(20);

  dim = X.getNumCols();
  n = X.getNumRows();
  nnz = X.getNumEntries();

  sparseMatrix X_t(dim, n, nnz);
  X_t.setChunkSize(4);
  X_t.setTranspose(tripletList);

  vector<double> testY;
  tripletList.clear();
  sparseMatrix test(testFile, testY, tripletList);
  test.setChunkSize(20);

  solveLogisticRegression(X, X_t, y, test, testY);
}