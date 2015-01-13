#!/usr/bin/python
import sys,math
from collections import defaultdict

def read_input(f):
  for line in f:
    yield line.rstrip().split()

def readVocab():
  vocab = {}
  f = open('vocabulary.txt')
  for line in f:
    word, wordId = line.rstrip().split()
    vocab[wordId] = word
  f.close()
  return vocab

def readIdf():
  train_idf = {}
  f = open('train_idf.txt')
  for line in f:
    word, idf = line.rstrip().split()
    train_idf[word] = float(idf)
  return train_idf

def main():
  vocab = readVocab()
  train_idf = readIdf()
  
  currentWord = None
  listofdocs = None
  numDocs = None
  
  data = read_input(sys.stdin)
  for line in data:
    word, docname, wordcount, totalwords, count = line
    if currentWord != word:
      if currentWord != None:
        for _word, _docname, _wordcount, _totalwords in listofdocs:  
          idf = train_idf[vocab[_word]]
          tf = float(_wordcount)/float(_totalwords)
          tfidf = tf*idf
          print '%s\t%s\t%f' % (_word, _docname, tfidf)
          
      currentWord = word
      listofdocs = []
      numDocs = 0
    
    listofdocs.append((word, docname, wordcount, totalwords))
    numDocs += 1
    
  for _word, _docname, _wordcount, _totalwords in listofdocs:  
    idf = train_idf[vocab[_word]]
    tf = float(_wordcount)/float(_totalwords)
    tfidf = tf*idf
    print '%s\t%s\t%f' % (_word, _docname, tfidf)
          
if __name__ == "__main__":
  main()