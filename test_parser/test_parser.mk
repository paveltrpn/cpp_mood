SRCS := test_parser.cpp
OBJS := $(SRCS:.cpp=.o)

test_parser.o: test_parser.cpp
	$(CC) $(CFLAGS) -c test_parser.cpp

test_parser2.o: test_parser2.cpp
	$(CC) $(CFLAGS) -I$(BOOSTDIR) -c test_parser2.cpp 