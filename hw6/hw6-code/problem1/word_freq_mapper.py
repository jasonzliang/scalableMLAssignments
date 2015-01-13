#!/usr/bin/python
import sys,os

delchars = ''.join(c for c in map(chr, range(256)) if not c.isalnum())

def sanitize(myString):
  return myString.translate(None, delchars)

def read_input(f):
  for line in f:
    yield line.rstrip().split()

def main():
  docpath = os.environ['mapreduce_map_input_file'].split('/')
  try:
    docname = 10000*int(docpath[-2]) + int(docpath[-1]) + 1
  except:
    docname = docpath[-2] + ";" + docpath[-1]
  
  data = read_input(sys.stdin)
  for line in data:
    words = [sanitize(x) for x in line]
    for word in words:
      if len(word) > 0:
        print '%s\t%s\t%d' % (word, docname, 1)

if __name__ == "__main__":
  main()