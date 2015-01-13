#ifndef SPARSE_MATRIX
#define SPARSE_MATRIX

#include <omp.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <iostream>
#include <vector>
#include <fstream>
#include <math.h>
#include <assert.h>
#include <algorithm>

using namespace std;

struct triplet
{
  int row;
  int col;
  double value;
};

class sparseMatrix
{
private:
  int nRows, nCols, numEntries, chunkSize;
  double *values;
  int *col_indices;
  int *row_start_pos;
  int *row_length;

public:
  sparseMatrix(int nRows, int nCols, int numEntries);
  sparseMatrix(char *filename, vector<double> &labels, vector<triplet> &tripletList);
  sparseMatrix(char *dataFile, char *metaFile);
  ~sparseMatrix();

  void readMetafile(char *metaFile);
  void multiply(double *x, double *y);

  //logistic regression methods
  void setTranspose(vector<triplet> &tripletList);
  double dotProduct(int row, double *w);
  void computeGradient_d_ii(double *gradient, double *w, double *d_ii, vector<double> &y, double lambda);
  double objectiveError(double *w, vector<double> &y, double lambda);
  void testAccuracy(double *w, vector<double> &y);

  //pagerank methods
  void computeD_ii(double *d_ii);
  void computeP_t(double *d_ii, double *newvalues, double alpha);
  void multP_t(double *x, double *y, double alphavr_sum);

  //simple inline methods
  inline int getNumRows()
  {
    return nRows;
  }

  inline int getNumCols()
  {
    return nCols;
  }

  inline int getNumEntries()
  {
    return numEntries;
  }

  inline double *getValues()
  {
    return values;
  }

  inline void setValues(double *x)
  {
    values = x;
  }

  inline void setChunkSize(int x)
  {
    chunkSize = x;
  }

};

#endif