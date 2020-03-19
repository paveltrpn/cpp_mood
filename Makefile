
#Linux specific
#HOME	:= 
#RM		:= rm -f *.o
#SRCS	:= $(wildcard *.cpp)
#OBJS	:= $(SRCS:.cpp=.o)

#Windows specific
HOME		= D:\Engineering
RM_O		= powershell "(Remove-Item -ErrorAction Ignore *.o)"
RM_MAIN		= powershell "(Remove-Item -ErrorAction Ignore main.exe)"
RM_CHEM_O	= powershell "(Remove-Item -ErrorAction Ignore chem/*.o)"

CC = g++
CFLAGS = -std=c++17

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

#CHEM target
chem: $(CHEM_OBJS)
	$(CC) $(CHEM_OBJS) -o main -lstdc++

mtrx234.o: mtrx234.cpp
	 $(CFLAGS) -I $(HOME)/algebra_cpp/ -c $(HOME)/algebra_cpp/mtrx234.cpp 

vec234.o: vec234.cpp
	 $(CFLAGS) -I $(HOME)/algebra_cpp/ -c $(HOME)/algebra_cpp/vec234.cpp

qtnn.o: qtnn.cpp
	 $(CFLAGS) -I $(HOME)/algebra_cpp/ -c $(HOME)/algebra_cpp/qtnn.cpp

plane.o: plane.cpp
	 $(CFLAGS) -I $(HOME)/algebra_cpp/ -c $(HOME)/algebra_cpp/plane.cpp	

chem/polynomial.o: chem/polynomial.cpp
	$(CC) $(CFLAGS) -I $(HOME)/algebra_cpp/ -c chem/polynomial.cpp -o chem/polynomial.o

chem/simple.o: chem/simple.cpp
	$(CC) $(CFLAGS) -I $(HOME)/algebra_cpp/ -c chem/simple.cpp -o chem/simple.o

chem/test.o: chem/test.cpp
	$(CC) $(CFLAGS) -I $(HOME)/algebra_cpp/ -c chem/test.cpp -o chem/test.o

#Other targets
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

ip_test:
	$(info IP_TEST file compile)
	$(CC) $(CFLAGS) ip_test.cpp -o main -lstdc++ 

clean:
	$(RM_O)
	$(RM_CHEM_O)
	$(RM_MAIN) 
