#!/usr/bin/python
import sys,os

def outputNodeFile(fileName, nodes):
	f = open(fileName, 'wb')
	for i in xrange(nodes):
		if i % 10**6 == 0:
			print i
		f.write(str(i+1)+"\n")
	f.close()

def mmFile(inputF, outputF):
	f = open(inputF)
	g = open(outputF, 'wb')
	g.write("%%MatrixMarket matrix coordinate real general\n")
	g.write("15853098\t15853098\t461821174\n")
	counter = 0
	for line in f:
		if counter % 10**6 == 0:
			print counter
		g.write(line.rstrip() + "\t1\n")
		counter += 1
	f.close()
	g.close()

def genCV(basedir, n=5):
	inputname = "/user/jliang/als_" + basedir.split("/")[-1]
	os.system("hadoop fs -rm -R " + inputname)
	os.system("hadoop fs -copyFromLocal " + basedir + " " + inputname)
	for i in xrange(n):
		folderName = inputname + "/cv" + str(i) + "/"
		os.system("hadoop fs -mkdir " + folderName)
		os.system("hadoop fs -rm -R temp")
		inputFile = inputname + "/train"
		outputDir = folderName
		command = "/home/jliang/Desktop/mahout-1.0/bin/mahout splitDataset --input " + inputFile + " --output " + outputDir + " --trainingPercentage " + str(float(n-1)/n) + " --probePercentage " + str(float(1)/n)
		print
		print command
		print
		os.system(command)

def runSpark(basedir, n=5, numIter=10, cv=False):
	print "running on spark!"
	if not cv:
		n = 1

	for l in [0.1,1,10]:
		for k in [10, 100]:
			for i in xrange(n):
				if cv:
					basePath = "/user/jliang/als_" + basedir.split("/")[-1] + "/cv" + str(i)
					inputPath = basePath + "/trainingSet/"
				else: 
					basePath = "/user/jliang/hw7/" + basedir.split("/")[-1]
					inputPath = basePath + "/train"

				outputPath = basePath + "_" + str(k) + "_" + str(l) + "_sparkOutput"
				realOutputPath = outputPath + "*"

				os.system("hadoop fs -rm -R " + realOutputPath)
				os.system("hadoop fs -rm -R temp")
				sparkCommand = "HADOOP_CONF_DIR=/usr/lib/hadoop-yarn/etc/hadoop/ MASTER=yarn-cluster /home/jliang/Desktop/spark/bin/run-example mllib.JavaALS " + inputPath + " " + str(k) + " " + str(numIter) + " " + str(l) + " " + outputPath
				print
				print sparkCommand
				print
				os.system(sparkCommand)

				outputFolder = realOutputPath.split("/")[-1]
				os.system("rm -rf " + outputFolder)
				os.system("hadoop fs -copyToLocal " + realOutputPath + " .")
				userFiles = outputFolder + "/userFeatures/part*"
				movieFiles = outputFolder + "/productFeatures/part*"
				os.system("cat " + userFiles + "> users")
				os.system("cat " + movieFiles + "> movies")

				testFile = basedir + "/test"
				metaFile = basedir + "/meta"

				evalCommand = "./calculateRMSE users movies " + testFile + " " + metaFile

				print
				print evalCommand
				print

				os.system(evalCommand + " | tee " + outputFolder + "_RMSE")
				os.system("rm users movies")

def runMahout(basedir, n=5, numIter=8):
	print "running on mahout!"
	for l in [0.1,1,10]:
		for k in [10,100]:
			for i in xrange(n):
				basePath = "/user/jliang/als_" + basedir.split("/")[-1] + "/cv" + str(i)
				outputName = basePath + "_" + str(k) + "_" + str(l) + "_output"
				inputName = basePath + "/trainingSet/"

				os.system("hadoop fs -rm -R " + outputName)
				os.system("hadoop fs -rm -R temp")
				mahoutcommand = "./mahout parallelALS --input " + inputName + " --output " + outputName + " --numFeatures " + str(k) + " --lambda " + str(l) + " --numIterations " + str(numIter) + " --numThreadsPerSolver 4"
				print
				print mahoutcommand
				print
				os.system(mahoutcommand)

				probeSet = basePath + "/probeSet/"
				rmse = outputName + "/rmse"
				user = outputName + "/userRatings/"
				movie = outputName + "/itemRatings/"

				evalCommand = "./mahout evaluateFactorization --input " + probeSet + " --userFeatures " + user + "  --itemFeatures " + movie + " --output" + rmse

				print
				print evalCommand
				print
				# os.system(evalCommand)

if __name__ == "__main__":
	# outputNodeFile(sys.argv[1], int(sys.argv[2]))
	# mmFile(sys.argv[1], sys.argv[2])
	basedir = sys.argv[1]
	n = int(sys.argv[2])
	try:
		numIter = int(sys.argv[3])
	except:
		numIter = 10

	# genCV(basedir=basedir, n=n)
	runSpark(basedir=basedir, n=n, numIter=numIter)
