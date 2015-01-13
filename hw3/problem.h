#ifndef PROBLEM
#define PROBLEM

#include <omp.h>
#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <vector>
#include <fstream>
#include <Eigen/Dense>
#include <Eigen/Sparse>
#include <math.h>

using namespace std;
using namespace Eigen;

int outerIter, N, dim, numThreads, chunkSize;
double C;

struct data_struct
{
	VectorXd *y;
  SparseMatrix<double,RowMajor> *x;
};

void readFromFile(char *filename, data_struct &myStruct, bool setN_Dim);
void construct_W_R_diag(SparseMatrix<double, RowMajor> &x, VectorXd &y, VectorXd &alpha, VectorXd &R_diag, VectorXd &w);
void computeErrors(SparseMatrix<double, RowMajor> &x, VectorXd &y, SparseMatrix<double, RowMajor> &xt, VectorXd &yt, VectorXd &alpha, VectorXd &R_diag, VectorXd &w);
void cd_svm(data_struct &trainStruct, data_struct &testStruct);
void deleteR(data_struct &mySturct);
void experiments();

#endif