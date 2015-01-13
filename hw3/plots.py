import numpy as np 
import matplotlib.pyplot as plt 
plt.figure(figsize=(12,8))

cov_g_optimal = 33346.9
rcv1_g_optimal = 6310.59
linestyles = ['-', '--', ':']

def drawPlot(filename, title, iscov=True):
	if iscov:
		g_optimal = cov_g_optimal
	else:
		g_optimal = rcv1_g_optimal
	
	def parseThread(thread):
		wallArray = []
		relError = []
		for line in thread:
			rawData = line.rstrip().split()
			wallArray.append(float(rawData[4]))
			currError = float(rawData[7])
			relError.append((currError - g_optimal)/g_optimal)
		return np.array(wallArray), np.array(relError)
	
	f = open(filename)
	lines = f.readlines()
	thread1 = lines[1:21]
	thread8 = lines[22:42]
	thread16 = lines[43:63]
	n = [1,8,16]
	
	plt.title(title)
	c = 0
	for n, thread in zip(n,[thread1, thread8, thread16]):
		wall, relError = parseThread(thread)
		plt.plot(wall, relError, label=str(n) + " threads", linestyle=linestyles[c], linewidth=2)
		plt.xlabel("wall time (seconds)")
		plt.ylabel("relative error")
		plt.grid()
		plt.legend(loc="upper right")
		c += 1
	plt.savefig(filename + ".png", bbox_inches='tight')
	plt.clf()

if __name__ == "__main__":
	drawPlot("plots/locking_covtype", "Covtype Dataset with Atomic Locks")
	drawPlot("plots/locking_rcv1", "RCV1 Dataset with Atomic Locks", False)
	drawPlot("plots/nolocking_covtype", "Covtype Dataset without Atomic Locks")
	drawPlot("plots/nolocking_rcv1", "RCV1 Dataset without Atomic Locks", False)