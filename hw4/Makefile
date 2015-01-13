EXE = hw4
INC=-I./
CFLAGS = -O3 -fopenmp 

hw4: problem.cpp sparse_matrix.cpp
	g++ $(CFLAGS) $(INC) -o hw4 problem.cpp sparse_matrix.cpp

all: $(EXE)

.PHONY: clean
clean:
	rm -f $(EXE) *.o