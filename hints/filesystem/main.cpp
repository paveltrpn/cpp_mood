
#include <iostream>
#include <cstdint>
#include <fmt/core.h>

#include "common.h"


int main(int argc, char **argv) {
    fmt::print("{0} {1}", "hello!", "мир\n");

    file_c file;

    try {
        file = file_c("assets/raven.txt");

        fmt::print("main(): размер файла {0} - {1} байт.\n", file.getFileName(), file.getFileSize());
    } catch (const exception& e) {
        cout << e.what();
    }

    file.readStrings();

    file.printAll();
    
    return 0;
}