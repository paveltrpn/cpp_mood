
CC       := g++
CFLAGS   := -Wall -std=c++17
LIBS 	 := -lstdc++
RM       := rm -f

SRCS := transpose.cpp
OBJS := $(SRCS:.cpp=.o)

$(info COMMON MAKEFILE)

compile: transpose.o

derivative.o: transpose.cpp
	$(CC) $(CFLAGS) -c transpose.cpp 

clean:
	$(RM) *.o
