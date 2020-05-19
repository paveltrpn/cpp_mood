
SRCS := test.c
OBJS := $(SRCS:.c=.o)

all: compile build

compile: test.o

test.o: test.c
	gcc -c test.c 

build:
	gcc test.o -o main
