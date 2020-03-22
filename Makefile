
#Linux specific
#DEVHOME	= 
#SRCS		= $(wildcard *.cpp)
#OBJS		= $(SRCS:.cpp=.o)

#Windows specific
CYGWIN		= D:/Devtools/cygwin/bin
DEVHOME		= D:/Engineering
ALGEBRA_CPP = $(DEVHOME)/algebra_cpp

CC		= g++
CFLAGS	= -Wall -std=c++17

CHEM_OBJS	=  chem/test.o\
			   chem/polynomial.o\
			   chem/simple.o\
			   $(ALGEBRA_CPP)/mtrx234.o\
			   $(ALGEBRA_CPP)/vec234.o\
			   $(ALGEBRA_CPP)/qtnn.o\
			   $(ALGEBRA_CPP)/plane.o

PRJ_LIST = chem template vector prime vk_quest derivative disasm transpose chainline\
movesemantic ip_test

.PHONY: $(PRJ_LIST) clean all

$(info COMMON MAKEFILE)

all: $(PRJ_LIST)

chem: 
	cd $(ALGEBRA_CPP) ; make compile
	cd $(DEVHOME)/cpp_trivia/chem ; make compile
	$(CC) $(CHEM_OBJS) -o chem -lstdc++

template:
	cd $(DEVHOME)/cpp_trivia/template ; make compile
	$(CC) template/template.o -o template -lstdc++

vector:
	cd $(DEVHOME)/cpp_trivia/vector ; make compile
	$(CC) vector/vector.o -o vector -lstdc++

prime:
	cd $(DEVHOME)/cpp_trivia/prime ; make compile
	$(CC) prime/prime.o -o prime -lstdc++

vk_quest:
	cd $(DEVHOME)/cpp_trivia/vk_quest ; make compile
	$(CC) vk_quest/vk_quest.o -o vk_quest -lstdc++ -larmadillo

derivative:
	cd $(DEVHOME)/cpp_trivia/derivative ; make compile
	$(CC)derivative/derivative.o -o derivative -lstdc++ -lplplotcxx
	
transpose:
	cd $(DEVHOME)/cpp_trivia/transpose ; make compile
	$(CC) transpose/transpose.o -o transpose -lstdc++ 

disasm:
	cd $(DEVHOME)/cpp_trivia/disasm ; make compile
	$(CC) disasm/disasm.o -o disasm -lstdc++

chainline:
	cd $(DEVHOME)/cpp_trivia/chainline ; make compile
	$(CC) chainline/chainline.o -o chainline -lstdc++ -lplplotcxx

movesemantic:
	cd $(DEVHOME)/cpp_trivia/movesemantic ; make compile
	$(CC) movesemantic/movesemantic.o -o movesemantic -lstdc++  

ip_test:
	cd $(DEVHOME)/cpp_trivia/ip_test ; make compile
	$(CC) ip_test/ip_test.o -o ip_test -lstdc++ 

clean:
	rm -f *.exe
	$(foreach prj, $(PRJ_LIST), rm -f $(DEVHOME)/cpp_trivia/$(prj)/*.o;) 
	rm -f $(ALGEBRA_CPP)/*.o
