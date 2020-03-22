
#include <iostream>

template <typename T> T foo(T in) {
	return in + 11.6; 
}

int main(int argc, char * argv[]) {
	std::cout << "FILE - template.cpp" << std::endl;
	
	std::cout << "template out = " << foo(10.0) << "\n";
	
	return 0;
}