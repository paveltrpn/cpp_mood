
CC       := g++
CFLAGS   := -Wall -std=c++17
LIBS 	 := -lstdc++
RM       := rm -f

SRCS := movesemantic.cpp
OBJS := $(SRCS:.cpp=.o)

$(info COMMON MAKEFILE)

compile: movesemantic.o

derivative.o: movesemantic.cpp
	$(CC) $(CFLAGS) -c movesemantic.cpp 

clean:
	$(RM) *.o
