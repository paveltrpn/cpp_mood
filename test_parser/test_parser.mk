SRCS := test_parser.cpp
OBJS := $(SRCS:.cpp=.o)

compile: test_parser.o

test_parser.o: test_parser.cpp
	$(CC) $(CFLAGS) -c test_parser.cpp 