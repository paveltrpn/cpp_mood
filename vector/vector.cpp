
#include <iostream>
#include <vector>

void foo(int n) {
	std::vector<float> bar(n);

	for (int i = 0; i < n; i++) {
		bar.push_back((float)i + 1.0);
	}
}

int main(int argc, char * argv[]) {
	std::cout << "FILE - vector.cpp" << std::endl;

	return 0;
}