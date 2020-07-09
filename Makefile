all: sum_test

sum_test: sum.o main.o
	g++ -o sum_test sum.o main.o

sum.o: sum.h sum.cpp

main.o: sum.h sum.cpp

clean:
	rm -f sum_test *.o
