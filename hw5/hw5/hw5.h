#ifndef APPS_HW5
#define APPS_HW5

#include "Galois/Galois.h"
#include "Galois/Graph/Graph.h"
#include "Galois/Timer.h"

// #include "Galois/Accumulator.h"
// #include "Galois/Bag.h"
// #include "Galois/Statistic.h"
// #include "Galois/Graph/LCGraph.h"
// #include "Galois/Graph/TypeTraits.h"
// #include "llvm/Support/CommandLine.h"
// #include "Lonestar/BoilerPlate.h"

#include <iostream>
#include <string>
#include <sstream>
#include <stdint.h>
// #include <deque>
// #include <set>
// #include <limits>

using namespace std;

struct container //data container for graph nodes
{
  double x;
  double y;
  double d_ii;
};

struct pagerank
{
  int index;
  double value;
};

typedef Galois::Graph::LC_CSR_Graph<container, double> Graph;
typedef Graph::GraphNode GNode;

Graph graph;

uint graphSize;
double alpha;

double *y;
double alphavr_sum; //alpha*1*v^T*r

#endif
