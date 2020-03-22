
CC       := g++
CFLAGS   := -Wall -std=c++17
LIBS 	 := -lstdc++
RM       := rm -f

SRCS := vector.cpp
OBJS := $(SRCS:.cpp=.o)

$(info COMMON MAKEFILE)

compile: vector.o

derivative.o: vector.cpp
	$(CC) $(CFLAGS) -c vector.cpp 

clean:
	$(RM) *.o
