
CC       := g++
CFLAGS   := -Wall -std=c++17
LIBS 	 := -lstdc++
RM       := rm -f

SRCS := ip_test.cpp
OBJS := $(SRCS:.cpp=.o)

$(info COMMON MAKEFILE)

compile: ip_test.o

derivative.o: ip_test.cpp
	$(CC) $(CFLAGS) -c ip_test.cpp 

clean:
	$(RM) *.o
