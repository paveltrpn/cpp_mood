
CC       := g++
CFLAGS   := -Wall -std=c++17
LIBS 	 := -lstdc++
RM       := rm -f

SRCS := vk_quest.cpp
OBJS := $(SRCS:.cpp=.o)

$(info COMMON MAKEFILE)

compile: vk_quest.o

derivative.o: vk_quest.cpp
	$(CC) $(CFLAGS) -c vk_quest.cpp 

clean:
	$(RM) *.o
