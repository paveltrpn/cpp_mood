###Linux specific###
export CC		:= g++
export CFLAGS	:= -Wall -O2 -std=c++17
CC_VERSION := $(shell $(CC) --version | grep g++)

DEVHOME				:= $(HOME)/code
export ALGEBRA_CPP 	:= $(DEVHOME)/algebra_cpp

PRJ_LIST = chem hints prime vk_quest derivative disasm transpose chainline\
ip_test test_parser test_parser2 char_count kaspersky_quest

$(info $(CC_VERSION))

.PHONY: $(PRJ_LIST) clean all

all: $(PRJ_LIST)

chem:
	cd $(ALGEBRA_CPP) ; make compile
	cd $(DEVHOME)/cpp_trivia/chem ; make -f chem.mk

hints:
	cd $(DEVHOME)/cpp_trivia/hints ; make -f hints.mk

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

ip_test:
	cd $(DEVHOME)/cpp_trivia/ip_test ; make compile
	$(CC) ip_test/ip_test.o -o $@ -lstdc++

test_parser:
	cd $(DEVHOME)/cpp_trivia/test_parser ; make -f test_parser.mk test_parser.o
	$(CC) test_parser/test_parser.o -o $@ -lstdc++

test_parser2:
	cd $(DEVHOME)/cpp_trivia/test_parser ; make -f test_parser.mk test_parser2.o
	$(CC) -L$(BOOSTLIBDIR) test_parser/test_parser2.o -o $@ -lstdc++ -lboost_program_options

char_count:
	cd $(DEVHOME)/cpp_trivia/char_count ; make -f char_count.mk char_count.o
	$(CC) char_count/char_count.o -o $@ -lstdc++ 

kaspersky_quest:
	cd $(DEVHOME)/cpp_trivia/kaspersky_quest ; make -f kaspersky_quest.mk
	
clean:
	$(foreach prj, $(PRJ_LIST), rm -f $(DEVHOME)/cpp_trivia/$(prj)/*.o;)
	$(foreach prj, $(PRJ_LIST), rm -f $(DEVHOME)/cpp_trivia/$(prj)/main;)
	rm -f $(ALGEBRA_CPP)/*.o
