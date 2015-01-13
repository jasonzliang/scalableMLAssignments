#!/usr/bin/python
import sys

def read_input(f):
  for line in f:
    yield line.rstrip().split()
    
def main():
  data = read_input(sys.stdin)
  for line in data:
    word, docname, tfidf = line
    print '%s\t%s\t%s' % (docname, word, tfidf)

if __name__ == "__main__":
  main()