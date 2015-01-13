#!/usr/bin/python
import sys

def read_input(f):
  for line in f:
    yield line.rstrip().split()
    
def main():
  data = read_input(sys.stdin)
  for line in data:
    word, docname, wordcount, totalwords = line
    print '%s\t%s\t%s\t%s\t%d' % (word, docname, wordcount, totalwords, 1)
    
if __name__ == '__main__':
  main()