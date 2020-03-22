
include ../Makefile

SRCS := test.cpp simple.cpp polynomial.cpp
OBJS := $(SRCS:.cpp=.o)

compile: simple.o polynomial.o test.o

simple.o: simple.cpp
	$(CC) $(CFLAGS) -I$(ALGEBRA_CPP) -c simple.cpp 

polynomial.o: polynomial.cpp
	$(CC) $(CFLAGS) -I$(ALGEBRA_CPP) -c polynomial.cpp 

test.o: test.cpp
	$(CC) $(CFLAGS) -I$(ALGEBRA_CPP) -c test.cpp

