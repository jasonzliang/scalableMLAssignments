EXE = cd-svm
INC=-I./
CFLAGS = -O3 -fopenmp 

cd-svm: problem.cpp
	g++ $(CFLAGS) $(INC) -o cd-svm problem.cpp

all: $(EXE)

.PHONY: clean
clean:
	rm -f $(EXE) *.o