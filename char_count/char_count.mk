SRCS := char_count.cpp
OBJS := $(SRCS:.cpp=.o)

char_count.o: char_count.cpp
	$(CC) $(CFLAGS) -c char_count.cpp
