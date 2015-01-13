#!/usr/bin/python
import sys,math
from collections import defaultdict

def read_input(f):
  for line in f:
    yield line.rstrip().split()

def main():
  f = open("num_documents.txt")
  totalDocuments = float(f.readline().rstrip())
  f.close()
  
  currentWord = None
  listofdocs = None
  numDocs = None
  
  data = read_input(sys.stdin)
  for line in data:
    word, docname, wordcount, totalwords, count = line
    if currentWord != word:
      if currentWord != None:
        idf = math.log(totalDocuments/float(1 + numDocs))
        print '%s\t%f' % (currentWord, idf)
          
      currentWord = word
      listofdocs = []
      numDocs = 0
    
    listofdocs.append((word, docname, wordcount, totalwords))
    numDocs += 1
    
  idf = math.log(totalDocuments/float(1 + numDocs))
  print '%s\t%f' % (currentWord, idf)
          
if __name__ == "__main__":
  main()