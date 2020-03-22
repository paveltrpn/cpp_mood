
include ../Makefile

SRCS := transpose.cpp
OBJS := $(SRCS:.cpp=.o)

compile: transpose.o

derivative.o: transpose.cpp
	$(CC) $(CFLAGS) -c transpose.cpp 
