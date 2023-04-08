CFLAGS=-std=c99 -Wall
CC=gcc

slice: slice_stdin.c
	$(CC) $(CFLAGS) slice_stdin.c -o slice

test: slice
	./test-slice.sh

gh-test-slice: clean slice test

clean:
	rm -f slice *.o a.out
	rm -rf tests-out