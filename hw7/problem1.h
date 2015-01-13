#ifndef PROBLEM
#define PROBLEM

#include "sparse_matrix.h"
#include <algorithm>

using namespace std;

struct pageRank
{
  int index;
  double value;
};

void computePageRank(sparseMatrix &mat, int numIter);
bool pageRank_sort(pageRank a, pageRank b);
void topRankedNodes(double *x, int nRows, int topX);


#endif