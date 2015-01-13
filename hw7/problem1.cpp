#include "problem1.h"

int main(int argc, char **argv)
{
  char inputFile[256];
  char metaFile[256];
  int numIter = 100;
  if (argc != 4)
  {
    cout << "usage: ./problem1 inputFile numThreads numIter" << endl;
    exit(-1);
  }
  else
  {
    strcpy(inputFile, argv[1]);
    strcpy(metaFile, inputFile);
    char *pch = strstr(metaFile, ".dat");
    strncpy(pch, ".meta\0", 6);

    int numThreads = atoi(argv[2]);
    omp_set_num_threads(numThreads);

    numIter = atoi(argv[3]);
  }
  cout << "input file: " << inputFile << endl;
  cout << "meta file: " << metaFile << endl;
  // char inputFile[] = "newdata/livejournal.dat";
  // char metaFile[] = "newdata/livejournal.meta";
  // char inputFile[] = "data/small_mat.txt";
  // char metaFile[] = "data/small_mat.meta";
  sparseMatrix mat(inputFile, metaFile);

  bool experiment = false;
  if (experiment)
  {
    int threads[3] = {1, 8, 16};
    for (int i = 0; i < 3; i++)
    {
      cout << "threads: " << threads[i] << endl;
      omp_set_num_threads(threads[i]);
      computePageRank(mat, numIter);
    }
  }
  else
  {
    computePageRank(mat, numIter);
  }
}


bool pageRank_sort(pageRank a, pageRank b)
{
  return a.value > b.value;
}

void topRankedNodes(double *x, int nRows, int topX)
{
  vector<pageRank> nodes;
  for (int i = 0; i < nRows; i++)
  {
    pageRank c;
    c.index = i;
    c.value = x[i];
    nodes.push_back(c);
  }

  sort(nodes.begin(), nodes.end(), pageRank_sort);
  for (int i = 0; i < topX; i++)
  {
    pageRank c = nodes[i];
    cout << "rank: " << i + 1 << " node index: " << c.index << " PageRank: " << c.value << endl;
  }
}

void computePageRank(sparseMatrix &mat, int numIter)
{
  int nRows = mat.getNumRows();
  int numEntries = mat.getNumEntries();

  double alpha = 0.15;
  double alphavr_sum = alpha / nRows;

  double *d_ii = new double[nRows];
  double *x = new double[nRows];
  for (int i = 0; i < nRows; i++)
  {
    x[i] = 1.0 / nRows;
  }

  mat.computeD_ii(d_ii);
  double *newValues = new double[numEntries];
  mat.computeP_t(d_ii, newValues, alpha);

  double elapsedTime = 0.0;
  for (int i = 0; i < numIter; i++)
  {
    double start = omp_get_wtime();

    double *y = new double[nRows];
    mat.multP_t(x, y, alphavr_sum);
    delete[] x;
    x = y;

    elapsedTime += omp_get_wtime() - start;
    if ((i + 1) % 5 == 0)
    {
      cout << "iter: " << i + 1 << " wall time: " << elapsedTime << endl;
    }
  }

  topRankedNodes(x, nRows, 10);

  delete[] d_ii;
  delete[] x;
}

