
#include <iostream>
#include "smart_ptr.h"

using namespace std;

int main(int argc, char *argv[]) {

    // unique_ptrAlloc([](){ 
                            // string word;
                            // cout << "unique_ptrAlloc(): wait for input...!!!\n";
                            // cin >> word;
                        // });

    shared_ptrAlloc([]() -> string { 
                            string word;
                            cout << "shared_ptrAlloc(): wait for input... (quit for exit)\n";
                            cin >> word;
                            return word;
                        });

    return 0;
}