
CC       := g++
CFLAGS   := -Wall -std=c++17
LIBS 	 := -lstdc++
RM       := rm -f

SRCS := prime.cpp
OBJS := $(SRCS:.cpp=.o)

$(info COMMON MAKEFILE)

compile: prime.o

derivative.o: prime.cpp
	$(CC) $(CFLAGS) -c prime.cpp 

clean:
	$(RM) *.o
