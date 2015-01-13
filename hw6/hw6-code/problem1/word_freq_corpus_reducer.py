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
        for _word, _docname, _wordcount, _totalwords in listofdocs:  
          idf = math.log(totalDocuments/float(1 + numDocs))
          tf = float(_wordcount)/float(_totalwords)
          tfidf = tf*idf
          print '%s\t%s\t%f' % (_word, _docname, tfidf)
          
      currentWord = word
      listofdocs = []
      numDocs = 0
    
    listofdocs.append((word, docname, wordcount, totalwords))
    numDocs += 1
    
  for _word, _docname, _wordcount, _totalwords in listofdocs:  
    idf = math.log(totalDocuments/float(1 + numDocs))
    tf = float(_wordcount)/float(_totalwords)
    tfidf = tf*idf
    print '%s\t%s\t%f' % (_word, _docname, tfidf)
          
if __name__ == "__main__":
  main()