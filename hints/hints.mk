SRCS := vector.cpp
OBJS := $(SRCS:.cpp=.o)

compile: vector.o movesemantic.o test.o

vector.o: vector.cpp
	$(CC) $(CFLAGS) -c vector.cpp

movesemantic.o: movesemantic.cpp
	$(CC) $(CFLAGS) -c movesemantic.cpp

test.o: test.cpp
	$(CC) $(CFLAGS) -c test.cpp