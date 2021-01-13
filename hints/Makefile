CC = g++-10
CFLAGS = --std=c++20

SRCS := vector.cpp movesemantic.cpp file.cpp template.cpp test.cpp
OBJS := $(SRCS:.cpp=.o)

.phony: all clean

all: main

vector.o: vector.cpp
	$(CC) $(CFLAGS) -c vector.cpp

movesemantic.o: movesemantic.cpp
	$(CC) $(CFLAGS) -c movesemantic.cpp

file.o: file.cpp
	$(CC) $(CFLAGS) -c file.cpp

test.o: test.cpp
	$(CC) $(CFLAGS) -c test.cpp

template.o: template.cpp
	$(CC) $(CFLAGS) -c template.cpp

main: $(OBJS)
	$(CC) $(OBJS) -o $@ -lstdc++ -lplplotcxx

clean:
	rm -f *.o main