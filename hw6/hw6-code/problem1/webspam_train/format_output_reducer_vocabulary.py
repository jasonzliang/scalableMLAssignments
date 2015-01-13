#!/usr/bin/python
import sys

def read_input(f):
  for line in f:
    yield line.rstrip().split()

def main():
  wordId = 1
  myWords = {}
  
  data = read_input(sys.stdin)
  for line in data:      
    docname, word, tfidf = line
    if word not in myWords:
      myWords[word] = wordId
      wordId += 1
  
  for word, wordId in myWords.items():
    print "%s\t%d" % (word, wordId)
    
if __name__ == "__main__":
  main()