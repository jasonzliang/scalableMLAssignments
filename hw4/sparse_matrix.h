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

using namespace std;

class sparseMatrix
{
private:
  int nRows, nCols, numEntries;
  double *values;
  int *col_indices;
  int *row_start_pos;
  int *row_length;

public:
  sparseMatrix(char *dataFile, char *metaFile);
  ~sparseMatrix();
  void readMetafile(char *metaFile);
  void multiply(double *x, double *y);

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
};

#endif