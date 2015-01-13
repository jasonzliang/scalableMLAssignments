#!/usr/bin/python
import sys,os
import re
pattern = re.compile('[\W_]+')

def sanitize(myString):
  return pattern.sub(' ', myString)

def read_input(f):
  for line in f:
    yield sanitize(line.rstrip()).split()

def main():
  docpath = os.environ['mapreduce_map_input_file'].split('/')
  docname = docpath[-2] + ";" + docpath[-1]
  
  data = read_input(sys.stdin)
  for words in data:
    for word in words:
      if len(word) > 0:
        print '%s\t%s\t%d' % (word, docname, 1)

if __name__ == "__main__":
  main()