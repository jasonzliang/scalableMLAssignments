#!/usr/bin/python
import sys

def read_input(f):
  for line in f:
    yield line.rstrip().split()

def sort_features(features):
  def feature_value(t):
    return int(t.split(":")[0])
  return sorted(features, key=feature_value)

def main():
  currentDocName = None
  listoffeatures = None
  
  data = read_input(sys.stdin)
  for line in data:      
    docname, word, tfidf = line
    
    if currentDocName != docname:
      if currentDocName != None:
        if currentDocName.split(";")[0] == "pos":
          label = "+1"
        else:
          label = "-1"
        print "%s\t%s" % (label, '\t'.join(sort_features(listoffeatures)))
      currentDocName = docname
      listoffeatures = []
      
    listoffeatures.append(word + ":" + tfidf)
    
  if currentDocName.split(";")[0] == "pos":
    label = "+1"
  else:
    label = "-1"
  print "%s\t%s" % (label, '\t'.join(sort_features(listoffeatures)))
    
if __name__ == "__main__":
  main()