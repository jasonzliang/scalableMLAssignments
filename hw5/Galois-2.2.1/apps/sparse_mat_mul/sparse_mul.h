/** Single source shortest paths -*- C++ -*-
 * @file
 * @section License
 *
 * Galois, a framework to exploit amorphous data-parallelism in irregular
 * programs.
 *
 * Copyright (C) 2013, The University of Texas at Austin. All rights reserved.
 * UNIVERSITY EXPRESSLY DISCLAIMS ANY AND ALL WARRANTIES CONCERNING THIS
 * SOFTWARE AND DOCUMENTATION, INCLUDING ANY WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR ANY PARTICULAR PURPOSE, NON-INFRINGEMENT AND WARRANTIES OF
 * PERFORMANCE, AND ANY WARRANTY THAT MIGHT OTHERWISE ARISE FROM COURSE OF
 * DEALING OR USAGE OF TRADE.  NO WARRANTY IS EITHER EXPRESS OR IMPLIED WITH
 * RESPECT TO THE USE OF THE SOFTWARE OR DOCUMENTATION. Under no circumstances
 * shall University be liable for incidental, special, indirect, direct or
 * consequential damages or loss of profits, interruption of business, or
 * related expenses which may arise from use of Software or Documentation,
 * including but not limited to those resulting from defects in Software and/or
 * Documentation, or loss or inaccuracy of data of any kind.
 *
 * @section Description
 *
 * Single source shortest paths.
 *
 * @author Andrew Lenharth <andrewl@lenharth.org>
 */
#ifndef APPS_SPARSE_MUL_H
#define APPS_SPARSE_MUL_H

#include "Galois/Galois.h"
#include "Galois/Graph/Graph.h"
#include "Galois/Timer.h"
#include "Galois/Runtime/ll/PaddedLock.h"

// #include "Galois/Accumulator.h"
// #include "Galois/Bag.h"
// #include "Galois/Statistic.h"
// #include "Galois/Graph/LCGraph.h"
// #include "Galois/Graph/TypeTraits.h"
// #include "llvm/Support/CommandLine.h"
// #include "Lonestar/BoilerPlate.h"

#include <iostream>
// #include <deque>
// #include <set>
// #include <limits>
#include <string>
#include <sstream>
#include <stdint.h>

using namespace std;

struct container
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

#endif
