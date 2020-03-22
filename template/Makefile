
CC       := g++
CFLAGS   := -Wall -std=c++17
LIBS 	 := -lstdc++
RM       := rm -f

SRCS := template.cpp
OBJS := $(SRCS:.cpp=.o)

$(info COMMON MAKEFILE)

compile: template.o

template.o: template.cpp
	$(CC) $(CFLAGS) -c template.cpp 

clean:
	$(RM) *.o
