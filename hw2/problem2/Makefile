EXE = omp-als
INC=-I./
CFLAGS = -O3 -fopenmp 

omp-als: problem2.cpp
	g++ $(CFLAGS) $(INC) -o omp-als problem2.cpp

all: $(EXE)

test: ./$(EXE) 
	./$(EXE) 20 1 16 ../data/large/

.PHONY: clean
clean:
	rm -f $(EXE) *.o