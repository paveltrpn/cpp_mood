
#Linux specific
#HOME	:= 
#RM		:= rm -f *.o
#SRCS	:= $(wildcard *.cpp)
#OBJS	:= $(SRCS:.cpp=.o)

#Windows specific
CYGWIN		= D:/Devtools/cygwin/bin
HOME		= D:/Engineering
ALGEBRA_CPP = $(HOME)/algebra_cpp

RM_O		= rm -f *.o
RM_MAIN		= rm -f main.exe
RM_CHEM_O	= rm -f chem/*.o

CC = g++
CFLAGS = -Wall -std=c++17

CHEM_OBJS	=  chem/test.o\
			   chem/polynomial.o\
			   chem/simple.o\
			   $(HOME)/algebra_cpp/mtrx234.o\
			   $(HOME)/algebra_cpp/vec234.o\
			   $(HOME)/algebra_cpp/qtnn.o\
			   $(HOME)/algebra_cpp/plane.o

.PHONY: chem

$(info COMMON MAKEFILE)

dummy:
	$(info no make target)

chem: 
	cd $(ALGEBRA_CPP) ; make compile
	cd $(HOME)/cpp_trivia/chem ; make compile
	$(CC) $(CHEM_OBJS) -o chem -lstdc++

template:
	cd $(HOME)/cpp_trivia/template ; make compile
	$(CC) template.o -o template -lstdc++

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

ip_test:
	$(info IP_TEST file compile)
	$(CC) $(CFLAGS) ip_test.cpp -o main -lstdc++ 

clean:
	rm -f *.o
	rm -f main.exe
	rm -f chem/*.o
	rm -f $(ALGEBRA_CPP)/*.o
