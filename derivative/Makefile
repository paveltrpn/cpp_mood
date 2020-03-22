
CC       := g++
CFLAGS   := -Wall -std=c++17
LIBS 	 := -lstdc++
RM       := rm -f

SRCS := derivative.cpp
OBJS := $(SRCS:.cpp=.o)

$(info COMMON MAKEFILE)

compile: derivative.o

derivative.o: derivative.cpp
	$(CC) $(CFLAGS) -c derivative.cpp 

clean:
	$(RM) *.o
