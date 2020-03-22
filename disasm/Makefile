
include ../Makefile

SRCS := disasm.cpp
OBJS := $(SRCS:.cpp=.o)

compile: disasm.o

derivative.o: disasm.cpp
	$(CC) $(CFLAGS) -c disasm.cpp 
