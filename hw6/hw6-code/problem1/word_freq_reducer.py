#!/usr/bin/python
import sys
from collections import defaultdict

def read_input(f):
  for line in f:
    yield line.rstrip().split()
        
def main():
  wordId = 1
  myWords = {}
  currentKey = None
  currentCount = None
  
  data = read_input(sys.stdin)
  for line in data:
    word, docname, count = line
    if word not in myWords:
      myWords[word] = wordId
      wordId += 1
    
    key = word + "_" + docname
    if currentKey != key:
      if currentKey != None:
        print '%d\t%s\t%d' % (myWords[currentKey.split('_')[0]], currentKey.split('_')[1], currentCount) 
      currentKey = key
      currentCount = 0
    currentCount += 1 
    
  print '%d\t%s\t%d' % (myWords[currentKey.split('_')[0]], currentKey.split('_')[1], currentCount)  
      
if __name__ == '__main__':
  main()