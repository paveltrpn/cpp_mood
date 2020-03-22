
CC       := g++
CFLAGS   := -Wall -std=c++17
LIBS 	 := -lstdc++
RM       := rm -f

SRCS := disasm.cpp
OBJS := $(SRCS:.cpp=.o)

$(info COMMON MAKEFILE)

compile: disasm.o

derivative.o: disasm.cpp
	$(CC) $(CFLAGS) -c disasm.cpp 

clean:
	$(RM) *.o
