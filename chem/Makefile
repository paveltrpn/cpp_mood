
CC       := g++
CFLAGS   := -Wall -std=c++17
LIBS 	 := -lstdc++
RM       := rm -f

SRCS := test.cpp simple.cpp polynomial.cpp
OBJS := $(SRCS:.cpp=.o)

$(info COMMON MAKEFILE)

all: compile link 

compile: simple.o polynomial.o test.o

simple.o: simple.cpp
	$(CC) $(CFLAGS) -c simple.cpp 

polynomial.o: polynomial.cpp
	$(CC) $(CFLAGS) -c polynomial.cpp 

test.o: test.cpp
	$(CC) $(CFLAGS) -c test.cpp

link:
	$(CC) $(OBJS) -o main $(LIBS)

clean:
	$(RM) *.o
	$(RM) main
