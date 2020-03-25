
#Linux specific
#DEVHOME	= 
#SRCS		= $(wildcard *.cpp)
#OBJS		= $(SRCS:.cpp=.o)

#Windows specific
DEVHOME		= D:/Engineering
export ALGEBRA_CPP = $(DEVHOME)/algebra_cpp

CC_VERSION = $(shell g++ --version | grep g++)
export CC		= g++
export CFLAGS	= -Wall -std=c++17

CHEM_OBJS	=  chem/test.o\
			   chem/polynomial.o\
			   chem/simple.o\
			   $(ALGEBRA_CPP)/mtrx234.o\
			   $(ALGEBRA_CPP)/vec234.o\
			   $(ALGEBRA_CPP)/qtnn.o\
			   $(ALGEBRA_CPP)/plane.o

PRJ_LIST = chem template vector prime vk_quest derivative disasm transpose chainline\
movesemantic ip_test

$(info $(CC_VERSION))

.PHONY: $(PRJ_LIST) clean all

all: $(PRJ_LIST)

chem:
	cd $(ALGEBRA_CPP) ; make compile
	cd $(DEVHOME)/cpp_trivia/chem ; make -f chem.mk compile
	$(CC) $(CHEM_OBJS) -o $@ -lstdc++

template:
	cd $(DEVHOME)/cpp_trivia/template ; make compile
	$(CC) template/template.o -o $@ -lstdc++

vector:
	cd $(DEVHOME)/cpp_trivia/vector ; make -f vector.mk compile
	$(CC) vector/vector.o -o $@ -lstdc++

prime:
	cd $(DEVHOME)/cpp_trivia/prime ; make compile
	$(CC) prime/prime.o -o $@ -lstdc++

vk_quest:
	cd $(DEVHOME)/cpp_trivia/vk_quest ; make compile
	$(CC) vk_quest/vk_quest.o -o $@ -lstdc++ -larmadillo

derivative:
	cd $(DEVHOME)/cpp_trivia/derivative ; make compile
	$(CC)derivative/derivative.o -o $@ -lstdc++ -lplplotcxx
	
transpose:
	cd $(DEVHOME)/cpp_trivia/transpose ; make compile
	$(CC) transpose/transpose.o -o $@ -lstdc++ 

disasm:
	cd $(DEVHOME)/cpp_trivia/disasm ; make compile
	$(CC) disasm/disasm.o -o $@ -lstdc++

chainline:
	cd $(DEVHOME)/cpp_trivia/chainline ; make compile
	$(CC) chainline/chainline.o -o $@ -lstdc++ -lplplotcxx

movesemantic:
	cd $(DEVHOME)/cpp_trivia/movesemantic ; make compile
	$(CC) movesemantic/movesemantic.o -o $@ -lstdc++  

ip_test:
	cd $(DEVHOME)/cpp_trivia/ip_test ; make compile
	$(CC) ip_test/ip_test.o -o $@ -lstdc++ 

clean:
	rm -f *.exe
	$(foreach prj, $(PRJ_LIST), rm -f $(DEVHOME)/cpp_trivia/$(prj)/*.o;) 
	rm -f $(ALGEBRA_CPP)/*.o
