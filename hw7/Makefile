EXE = problem1 problem3 calculateRMSE
INC = -I./
CFLAGS = -O3 -fopenmp
CC = g++

all: $(EXE)

problem1: problem1.cpp sparse_matrix.cpp
	$(CC) $(CFLAGS) $(INC) -o problem1 problem1.cpp sparse_matrix.cpp

problem3: problem3.cpp sparse_matrix.cpp
	$(CC) $(CFLAGS) $(INC) -o problem3 problem3.cpp sparse_matrix.cpp

calculateRMSE: calculateRMSE.cpp
	$(CC) $(CFLAGS) $(INC) -o calculateRMSE calculateRMSE.cpp

.PHONY: clean
clean:
	rm -f $(EXE) *.o