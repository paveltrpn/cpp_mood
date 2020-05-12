
SRCS := vector.cpp movesemantic.cpp file.cpp template.cpp test.cpp
OBJS := $(SRCS:.cpp=.o)

all: compile build

compile: $(OBJS)

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

build:
	$(CC) $(OBJS) -o main -lstdc++