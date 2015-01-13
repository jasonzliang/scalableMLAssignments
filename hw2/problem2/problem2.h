#ifndef PROBLEM_2
#define PROBLEM_2

#include <omp.h>
#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <vector>
//#include <string>
#include <fstream>
#include <Eigen/Dense>
#include <Eigen/Sparse>
#include <math.h>

using namespace std;
using namespace Eigen;

int U, M, K, numTrain, numTest, numIter, numThreads, chunkScaleFactor;
double lambda, max_mem_gigs;
bool tuneChunkSize;
string trainFile, testFile, baseDir;

struct R
{
	SparseMatrix<double> *mat;
  VectorXd *R_col;
	vector<int> *R_col_i;
	VectorXd *R_row;
	vector<int> *R_row_i;

};

void readMetafile(string baseDir);
void readSparseMatrix(string filename, int numLines, R &myStruct);
void getRMSE(SparseMatrix<double> *testMat, MatrixXd &users, MatrixXd &movies, double &RMSE);
void getRMSE2(SparseMatrix<double> *testMat, MatrixXd &users, MatrixXd &movies, double &RMSE);
void ALS(R &ratingsStruct, MatrixXd &users, MatrixXd &movies, SparseMatrix<double> *testMat);

#endif