#!/usr/bin/python

import os,sys,random
import numpy as np

def createMatrix(n=500, outfile='data/small_mat.txt', t=0.1):
	f = open(outfile, 'wb')
	counter = 0
	for i in xrange(n):
		for j in xrange(n):
			if random.random() < 0.1:
				f.write(str(i+1) + " " + str(j+1) + " 1\n")
				counter += 1

	f.close()
	f = open(outfile[:-4] + ".meta", 'wb')
	f.write(str(n) + " " + str(n) + " " + str(counter) + "\n")
	f.close()

def reformat(infile='data.txt', outfile='data2.txt'):
	f = open(infile,'rb')
	g = open(outfile, 'wb')
	c = 0
	for line in f:
		if c % 1000000 == 0:
			print "processed " + str(c) + " lines"
		dataArray = [str(int(float(x))) for x in line.rstrip().split()];
		g.write(dataArray[1] + " " + dataArray[0] + " " + dataArray[2] + "\n")
		c += 1
	print "total entries: " + str(c)
	f.close()
	g.close()

def readMatrix(n=500, infile='data/small_mat.txt'):
	mat = np.zeros((n,n))
	f = open(infile,'rb')
	for line in f:
		i,j,v = [int(float(x)) for x in line.rstrip().split()]
		mat[i-1,j-1] = v;
	f.close()

	x = np.arange(n)/float(n)
	print np.sum(np.dot(mat, x))

if __name__ == '__main__':
	readMatrix()