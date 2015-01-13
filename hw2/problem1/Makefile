EXE = problem1_original problem1_a problem1_b problem1_c
CFLAGS = -fopenmp

all: $(EXE)

problem1_original: problem1_original.c
	gcc $(CFLAGS) -o problem1_original problem1_original.c

problem1_a: problem1_a.c
	gcc $(CFLAGS) -o problem1_a problem1_a.c

problem1_b: problem1_b.c
	gcc $(CFLAGS) -o problem1_b problem1_b.c

problem1_c: problem1_c.c
	gcc $(CFLAGS) -o problem1_c problem1_c.c

.PHONY: clean

clean:
	rm -f $(EXE) *.o