#include "sparse_matrix.h"

sparseMatrix::sparseMatrix(char *dataFile, char *metaFile)
{
  cout << "loading " << dataFile << endl;
  readMetafile(metaFile);
  values = new double[numEntries];
  col_indices = new int[numEntries];
  row_start_pos = new int[nRows];
  row_length = new int[nRows];
  for (int i = 0; i < nRows; i++)
  {
    row_start_pos[i] = -1;
    row_length[i] = 0;
  }

  FILE *fp = fopen(dataFile, "r");

  char line[200];
  char *pch;
  int row, col;
  double value;
  int counter = 0;

  row_start_pos[0] = 0;
  int currentRow = 0;
  int length = 0;

  while (fgets(line, 200, fp))
  {
    if (counter % 10000000 == 0 and counter > 0)
    {
      cout << "loaded " << counter << " lines!" << endl;
    }

    pch = strtok(line, " ");
    row = atoi(pch) - 1;
    if (row != currentRow)
    {
      row_length[currentRow] = length;
      length = 0;
      currentRow = row;
      row_start_pos[row] = counter;
    }

    pch = strtok(NULL, " ");
    col = atoi(pch) - 1;
    pch = strtok(NULL, "\n");
    value = atof(pch);

    // cout << row << " " << col << " " << value << endl;
    values[counter] = value;
    col_indices[counter] = col;
    counter++; length++;
  }
  row_length[currentRow] = length;
  fclose(fp);

  assert (counter == numEntries);
  cout << "matrix loaded successfully!" << endl;
  // for (int i = 0; i < nRows; i++)
  // {
  //  cout << row_start_pos[i] << " ";
  // }
  // cout << endl;

  // for (int i = 0; i < nRows; i++)
  // {
  //  cout << row_length[i] << " ";
  // }
  // cout << endl;
  // for (int i = 0; i < numEntries; i++)
  // {
  //  cout << col_indices[i] << " " << values[i] << endl;
  // }
}

sparseMatrix::~sparseMatrix()
{
  delete[] values;
  delete[] row_start_pos;
  delete[] row_length;
  delete[] col_indices;
}

void sparseMatrix::readMetafile(char *metaFile)
{
  ifstream infile(metaFile);
  string tokenA, tokenB, tokenC;
  infile >> tokenA >> tokenB >> tokenC;
  nRows = atof(tokenA.c_str());
  nCols = atof(tokenB.c_str());
  numEntries = atof(tokenC.c_str());
  infile.close();
  cout << "numEntries: " << numEntries << " rows: " << nRows << " cols: " << nCols << endl;
}

void sparseMatrix::multiply(double *x, double *y)
{
	#pragma omp parallel for schedule(dynamic, 500)
  for (int i = 0; i < nRows; i++)
  {
    double sum = 0.0;
    int p = row_start_pos[i];
    int r = row_length[i];
    for (int j = 0; j < r; j++)
    {
    	int value = values[p + j];
    	int col_index = col_indices[p + j];

    	sum += x[col_index]*value;
    }
    y[i] = sum;
  }
}


