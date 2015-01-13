#include <omp.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <iostream>
#include <vector>
#include <map>
#include <fstream>
#include <math.h>
#include <assert.h>
#include <algorithm>

using namespace std;

int U, M;

struct item
{
  int id;
  vector<double> factors;
};

struct triplet
{
  int row;
  int col;
  int rating;
};

void loadFromFile(char *filename, vector<item> &myList)
{
  myList.clear();
  FILE *fp = fopen(filename, "r");

  char line[80000];
  char *pch;
  char newline[] = "\n";

  while (fgets(line, 80000, fp))
  {
    item myItem;
    pch = strtok(line, " ");
    myItem.id = atoi(pch);

    while (true)
    {
      pch = strtok(NULL, " ,[]");
      if (pch == NULL or strcmp(pch, newline) == 0)
      {
        break;
      }
      myItem.factors.push_back(atof(pch));
    }

    myList.push_back(myItem);
  }
  fclose(fp);
}

void loadTestFile(char *testFile, vector<triplet> &test)
{
  FILE *fp = fopen(testFile, "r");

  char line[80000];
  char *pch;

  while (fgets(line, 80000, fp))
  {
    triplet myTriplet;

    pch = strtok(line, ",");
    myTriplet.row = atoi(pch);

    pch = strtok(NULL, ",");
    myTriplet.col = atoi(pch);

    pch = strtok(NULL, "\n");
    myTriplet.rating = atof(pch);

    test.push_back(myTriplet);
  }
  fclose(fp);
}

bool item_sort(item a, item b)
{
  return a.id < b.id;
}

void readMetafile(string metaFile)
{
  ifstream infile(metaFile.c_str());
  string tokenA, tokenB;
  infile >> tokenA >> tokenB;
  U = atoi(tokenA.c_str()); M = atoi(tokenB.c_str());
  // infile >> tokenA >> tokenB;
  // numTrain = atoi(tokenA.c_str()); trainFile = tokenB;
  // infile >> tokenA >> tokenB;
  // numTest = atoi(tokenA.c_str()); testFile = tokenB;
}

void computeRMSE(vector<item> &users, map<int, int> usersIndex, vector<item> &movies, map<int, int> &moviesIndex, vector<triplet> &test)
{
  int numTest = (int) test.size();
  int k = (int) users[0].factors.size();
  double RMSE = 0.0;
  for (int i = 0; i < numTest; i++)
  {
    triplet myTriplet = test[i];
    if (usersIndex.count(myTriplet.row) and moviesIndex.count(myTriplet.col))
    {
      item user = users[usersIndex.at(myTriplet.row)];
      item movie = movies[moviesIndex.at(myTriplet.col)];
      double sum = 0.0;
      for (int j = 0; j < k; j++)
      {
        sum += user.factors[j] * movie.factors[j];
      }
      RMSE += pow(sum - myTriplet.rating, 2);
    }
    else
    {
      RMSE += pow(myTriplet.rating, 2);
    }
    // cout << sum << " " << myTriplet.rating << " " << RMSE << endl;
  }

  RMSE = sqrt(RMSE / numTest);
  cout << "RMSE: " << RMSE << endl;
}

int main(int argc, char **argv)
{
  if (argc != 5)
  {
    cout << "usage: ./calculateRMSE userFile movieFile testFile metaFile" << endl;
    exit(-1);
  }
  vector<item> myUsers;
  vector<item> myMovies;
  vector<triplet> test;

  loadFromFile(argv[1], myUsers);
  loadFromFile(argv[2], myMovies);
  loadTestFile(argv[3], test);
  string metaFile = argv[4];
  readMetafile(metaFile);

  sort(myUsers.begin(), myUsers.end(), item_sort);
  sort(myMovies.begin(), myMovies.end(), item_sort);
  map<int, int> usersIndex;
  for (int i = 0; i < (int) myUsers.size(); i++)
  {
    usersIndex[myUsers[i].id] = i;
  }
  map<int, int> moviesIndex;
  for (int i = 0; i < (int) myMovies.size(); i++)
  {
    moviesIndex[myMovies[i].id] = i;
  }

  cout << "users size: " << (int) myUsers.size() << " movies size: " << (int) myMovies.size() << endl;
  computeRMSE(myUsers, usersIndex, myMovies, moviesIndex, test);
  // for (int i = 0; i < 100; i++)
  // {
  //   triplet t = test[i];
  //   cout << t.row << " " << t.col << " " << t.rating << endl;
  // }
  // item user = myMovies[0];
  // cout << user.id << endl;
  // for (int i = 0; i < 4; i ++)
  // {
  //   cout << user.factors[i] << " ";
  // }
  // cout << endl;
}
