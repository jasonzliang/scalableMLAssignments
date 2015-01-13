#include "problem.h"

int main(int argc, char **argv)
{
  char inputFile[] = "data/hw4-data.txt";
  char metaFile[] = "data/hw4-data.meta";
  // char inputFile[] = "data/small_mat.txt";
  // char metaFile[] = "data/small_mat.meta";
  sparseMatrix mat(inputFile, metaFile);

  testMultiplyRunningTime(mat);
  computeCentrality(mat);
}

void testMultiplyRunningTime(sparseMatrix &mat)
{
  int nRows = mat.getNumRows();
  double *x = new double[nRows];
  double *y = new double[nRows];

  int nRuns = 10;
  int threads[] = {1, 4, 8, 16};
  for (int i = 0; i < 4; i++)
  {
    omp_set_num_threads(threads[i]);
    double elapsedTime = 0.0;
    for (int k = 0; k < nRuns; k++)
    {
      for (int i = 0; i < nRows; i++)
      {
        x[i] = static_cast <float> (rand()) / static_cast <float> (RAND_MAX);
        // x[i] = double(i)/double(nRows);
      }
      double start = omp_get_wtime();
      mat.multiply(x, y);
      elapsedTime += omp_get_wtime() - start;
    }
    // double s = 0;
    // for (int w = 0; w < nRows; w++)
    // {
    //   s += y[w];
    // }
    // cout << "sum for y: " << s << endl;
    double avgTime = elapsedTime / 10.0;
    cout << "nThreads: " << threads[i] << ", y=A*x time (avg over 10 runs): " << avgTime << endl;
  }

  delete[] x;
  delete[] y;
}

void normalize(double *x, int nRows)
{
  double sum = 0.0;
  for (int i = 0; i < nRows; i++)
  {
    sum += x[i] * x[i];
  }
  sum = sqrt(sum);
  for (int i = 0; i < nRows; i++)
  {
    x[i] = x[i] / sum;
  }
}

double calculateLambda(sparseMatrix &mat, double *x, int nRows)
{
  double *y = new double[nRows];
  mat.multiply(x, y);

  double sum = 0.0;
  for (int i = 0; i < nRows; i++)
  {
    sum += y[i] * x[i];
  }
  // double sum2 = 0.0;
  // for (int i = 0; i < nRows; i++)
  // {
  //   sum2 += x[i] * x[i];
  // }
  // cout << sum << endl;
  // cout << sum2 << endl;
  delete[] y;
  return sum;
}

bool centrality_sort(centrality a, centrality b)
{
  return a.value > b.value;
}

void topRankedNodes(double *x, int nRows)
{
  vector<centrality> nodes;
  for (int i = 0; i < nRows; i++)
  {
    centrality c;
    c.index = i;
    c.value = x[i];
    nodes.push_back(c);
  }

  sort(nodes.begin(), nodes.end(), centrality_sort);
  for (int i = 0; i < 100; i++)
  {
    centrality c = nodes[i];
    cout << "rank: " << i + 1 << " node index: " << c.index << " centrality: " << c.value << endl;
  }
}

void computeCentrality(sparseMatrix &mat)
{
  omp_set_num_threads(16);
  int nRows = mat.getNumRows();
  double *x = new double[nRows];
  for (int i = 0; i < nRows; i++)
  {
    x[i] = 1.0;
  }
  normalize(x, nRows);
  double elapsedTime = 0.0;
  for (int i = 0; i < 50; i++)
  {
    double start = omp_get_wtime();

    double *y = new double[nRows];
    mat.multiply(x, y);
    delete[] x;
    x = y;
    normalize(x, nRows);

    elapsedTime += omp_get_wtime() - start;
    double lambda = calculateLambda(mat, x, nRows);
    cout << "iter: " << i + 1 << " wall time: " << elapsedTime << " lambda: " << lambda << endl;
  }

  topRankedNodes(x, nRows);
  delete[] x;
}