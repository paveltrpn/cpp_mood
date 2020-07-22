
CC       := clang++-10
CFLAGS   := --std=c++17
LIBS 	 := 
RM       := rm -f

SRCS := brasenham.cpp
OBJS := $(SRCS:.cpp=.o)

.PHONY: clean all

$(info COMMON MAKEFILE)

all: compile link

compile: brasenham.o

link: 
	$(CC) $(OBJS) -o main -lstdc++
	
brasenham.o: brasenham.cpp
	$(CC) $(CFLAGS) -c brasenham.cpp

clean:
	rm -f *.o main