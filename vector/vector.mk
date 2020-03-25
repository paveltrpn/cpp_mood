SRCS := vector.cpp
OBJS := $(SRCS:.cpp=.o)

compile: vector.o

vector.o: vector.cpp
	$(CC) $(CFLAGS) -c vector.cpp 