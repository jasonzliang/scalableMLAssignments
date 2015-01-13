#!/usr/bin/python
import sys
from collections import defaultdict

def read_input(f):
  for line in f:
    yield line.rstrip().split()
    
def main():
  currentDocName = None
  currentDocNumWords = None
  currentDocList = None
  
  data = read_input(sys.stdin)
  for line in data:
    docname, word, wordcount = line
    if currentDocName != docname:
      if currentDocName != None:
        for _docname, _word, _wordcount in currentDocList:
          print '%s\t%s\t%s\t%d' % (_word, _docname, _wordcount, currentDocNumWords)
          
      currentDocName = docname
      currentDocNumWords = 0
      currentDocList = []
    
    currentDocNumWords += int(wordcount)
    currentDocList.append((docname, word, wordcount))
    
  for _docname, _word, _wordcount in currentDocList:
    print '%s\t%s\t%s\t%d' % (_word, _docname, _wordcount, currentDocNumWords)
    
if __name__ == '__main__':
  main()