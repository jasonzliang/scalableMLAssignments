#include <omp.h>
#include <stdio.h>
#include <stdlib.h>

void helper(int M, int N)
{
  printf("M: %d N: %d\n", M, N);
  int i, j, k;
  double sum;
  double **A, **B, **C;
  A = malloc(M * sizeof(double *));
  B = malloc(M * sizeof(double *));
  C = malloc(M * sizeof(double *));
  for (i = 0; i < M; i++)
  {
    A[i] = malloc(N * sizeof(double));
    B[i] = malloc(N * sizeof(double));
    C[i] = malloc(N * sizeof(double));
  }

  for (i = 0; i < M; i++)
  {
    for (j = 0; j < N; j++)
    {
      A[i][j] = i + j;
      B[i][j] = i * j;
      C[i][j] = 0;
    }
  }

  double start = omp_get_wtime();
  
  int nTries;
  for (nTries = 0; nTries < 10; nTries++)
  {
    for (i = 0; i < M; i++)
    {
      for (j = 0; j < N; j++)
      {
        sum = 0;
        for (k = 0; k < M; k++)
        {
          sum += A[i][k] * B[k][j];
        }
        C[i][j] = sum;
      }
    }
  }

  double end = omp_get_wtime();
  printf("time elapsed, averaged over 10 runs:%.16g\n", (end - start) / 10.0);


  for (i = 0; i < M; i++)
  {
    free(A[i]);
    free(B[i]);
    free(C[i]);
  }
  free(A); free(B); free(C);
}


int main(int argc, char **argv)
{
  helper(50, 50);
  helper(500, 500);
}