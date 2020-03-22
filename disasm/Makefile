
include ../Makefile

SRCS := disasm.cpp
OBJS := $(SRCS:.cpp=.o)

compile: disasm.o

disasm.o: disasm.cpp
	$(CC) $(CFLAGS) -c disasm.cpp 
