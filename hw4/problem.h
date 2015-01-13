#ifndef PROBLEM
#define PROBLEM

#include "sparse_matrix.h"
#include <algorithm>

using namespace std;

struct centrality
{
  int index;
  double value;
};

void testMultiplyRunningTime(sparseMatrix &mat);
void computeCentrality(sparseMatrix &mat);
void normalize(double *x, int nRows);
double calculateLambda(sparseMatrix &mat, double *x, int nRows);

bool centrality_sort(centrality a, centrality b);
void topRankedNodes(double *x, int nRows);


#endif