
CC       := g++
CFLAGS   := -Wall -std=c++17
LIBS 	 := -lstdc++
RM       := rm -f

SRCS := chainline.cpp
OBJS := $(SRCS:.cpp=.o)

$(info COMMON MAKEFILE)

compile: chainline.o

chainline.o: chainline.cpp
	$(CC) $(CFLAGS) -c chainline.cpp 

clean:
	$(RM) *.o
