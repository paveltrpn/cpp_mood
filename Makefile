
CC     :=  g++
CFLAGS := -Wall -std=c++11 
LIBS   := 
RM     := rm -f

SRCS := $(wildcard *.cpp)
OBJS := $(SRCS:.cpp=.o)

$(info COMMON MAKEFILE)

dummy:
	$(info no make target)

template:
	$(info TEMPLATE file compile)
	$(CC) $(CFLAGS) template.cpp -o main -lstdc++

vector:
	$(info VECTOR file compile)
	$(CC) $(CFLAGS) vector.cpp -o main -lstdc++

prime:
	$(info PRIME file compile)
	$(CC) $(CFLAGS) prime.cpp -o main -lstdc++

vk_quest:
	$(info VK_QUEST file compile)
	$(CC) $(CFLAGS) vk_quest.cpp -o main -lstdc++ -larmadillo

derivative:
	$(info DERIVATIVE file compile)
	$(CC) $(CFLAGS) derivative.cpp -o main -lstdc++ -lplplotcxx
	
transpose:
	$(info TRANSPOSE file compile)
	$(CC) $(CFLAGS) transpose.cpp -o main -lstdc++ 

disasm:
	$(info DISASM file compile)
	$(CC) $(CFLAGS) disasm.cpp -o main -lstdc++

chainline:
	$(info CHAINLINE file compile)
	$(CC) $(CFLAGS) chainline.cpp -o main -lstdc++ -lplplotcxx

movesemantic:
	$(info MOVESEMANTIC file compile)
	$(CC) $(CFLAGS) movesemantic.cpp -o main -lstdc++  

clean:
	$(RM) *.o
	$(RM) main
