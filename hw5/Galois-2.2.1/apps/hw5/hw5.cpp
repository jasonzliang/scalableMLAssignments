#include "hw5.h"

//sparse matrix multiply for A*x in problem 2
void initX(GNode &node, Galois::UserContext<GNode> &c)
{
  graph.getData(node).x = double(rand()) / double(RAND_MAX);
}

struct multiply
{
  typedef int tt_does_not_need_push;
  typedef int tt_does_not_need_aborts;
  void operator()(GNode &node, Galois::UserContext<GNode> &c)
  {
    double sum = 0.0;
    for (auto edge : graph.out_edges(node))
    {
      GNode dst = graph.getEdgeDst(edge);
      sum += graph.getEdgeData(edge) * graph.getData(dst).x;
    }
    graph.getData(node).y = sum;
  }
};

struct setYtoX
{
  typedef int tt_does_not_need_push;
  typedef int tt_does_not_need_aborts;
  void operator()(GNode &node, Galois::UserContext<GNode> &c)
  {
    graph.getData(node).x = graph.getData(node).y;
  }
};


void getY(GNode &node, Galois::UserContext<GNode> &c)
{
  y[node] = graph.getData(node).y;
}

void testSparseMult()
{
  uint threads[] = {1, 4, 8, 16};
  for (int i = 0; i < 4; i++)
  {
    Galois::setActiveThreads(threads[i]);
    Galois::TimeAccumulator myTimer;
    for (int k = 0; k < 10; k++)
    {
      Galois::for_each(graph.begin(), graph.end(), initX);
      myTimer.start();
      Galois::for_each(graph.begin(), graph.end(), multiply());
      myTimer.stop();
    }
    double avgTime = double(myTimer.get()) / 10000.0;
    cout << "num Threads: " << threads[i] << ", average time in seconds for y=A*x over 10 runs: " << avgTime << endl;
  }
}

//sparse matrix multiply for P^T*r in problem 3
void initR(GNode &node, Galois::UserContext<GNode> &c)
{
  graph.getData(node).x = 1 / double(graphSize);
}

void calculateD_ii(GNode &node, Galois::UserContext<GNode> &c)
{
  double sum = 0.0;
  for (auto edge : graph.out_edges(node))
  {
    GNode dst = graph.getEdgeDst(edge);
    sum += graph.getEdgeData(edge);
  }
  graph.getData(node).d_ii = 1.0 / sum;
}

void calculateP(GNode &node, Galois::UserContext<GNode> &c)
{
  for (auto edge : graph.out_edges(node))
  {
    GNode dst = graph.getEdgeDst(edge);
    graph.getEdgeData(edge) = (1 - alpha) * graph.getData(dst).d_ii * graph.getEdgeData(edge);
  }
}

struct multiplyP
{
  typedef int tt_does_not_need_push;
  typedef int tt_does_not_need_aborts;
  void operator()(GNode &node, Galois::UserContext<GNode> &c)
  {
    double sum = 0.0;
    for (auto edge : graph.out_edges(node))
    {
      GNode dst = graph.getEdgeDst(edge);
      sum += graph.getEdgeData(edge) * graph.getData(dst).x;
    }
    graph.getData(node).y = sum + alphavr_sum;
  }
};

bool pagerank_sort(pagerank a, pagerank b)
{
  return a.value > b.value;
}

void topRankedNodes()
{
  vector<pagerank> nodes;
  for (int i = 0; i < graphSize; i++)
  {
    pagerank c;
    c.index = i;
    c.value = y[i];
    nodes.push_back(c);
  }

  sort(nodes.begin(), nodes.end(), pagerank_sort);
  for (int i = 0; i < 10; i++)
  {
    pagerank c = nodes[i];
    cout << "rank: " << i + 1 << " node index (starting from 1): " << c.index + 1 << " pageRank: " << c.value << endl;
  }
}

void pageRank()
{
  Galois::setActiveThreads(16);
  Galois::TimeAccumulator myTimer;
  y = new double[graphSize];

  alpha = 0.15;
  alphavr_sum = alpha / double(graphSize);
  Galois::for_each(graph.begin(), graph.end(), initR);
  Galois::for_each(graph.begin(), graph.end(), calculateD_ii);
  Galois::for_each(graph.begin(), graph.end(), calculateP);

  for (int i = 0; i < 50; i++)
  {
    myTimer.start();
    Galois::for_each(graph.begin(), graph.end(), multiplyP());
    Galois::for_each(graph.begin(), graph.end(), setYtoX());
    myTimer.stop();

    if ((i + 1) % 5 == 0)
    {
      double wallTime = double(myTimer.get()) / 1000.0;
      cout << "iter: " << i + 1 << " wall time: " << wallTime << endl;
    }
  }

  Galois::for_each(graph.begin(), graph.end(), getY);
  topRankedNodes();

  delete[] y;
}

int main(int argc, char **argv)
{
  if (argc != 2)
  {
    cout << "usage: ./hw5 {path to graph file}" << endl;
    exit(EXIT_FAILURE);
  }
  string inputFile(argv[1]);
  Galois::Graph::readGraph(graph, inputFile);
  graphSize = graph.size();
  cout << "graph loaded!" << endl;

  testSparseMult(); //test sparse matrix multiply run time
  pageRank();

  return 0;
}

