
#include <iostream>

export module algebra;

export void tellAlgebraHello() {
    std::cout << "tellAlgebraHello(): Hello!!!\n";
}

export float floatSum(float a, float b) {
    return a + b;
}
