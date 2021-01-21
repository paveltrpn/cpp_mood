
#ifndef __smart_ptr_h__
#define __smart_ptr_h__

#include <iostream>
#include <functional>
#include <cstring>
#include <string>

constexpr size_t block = 1024*1024*100; // exactly 100 megabytes

using namespace std;

class houndredMb_c {
    private:
        int8_t *houndredMb;

    public:
        houndredMb_c() {
            houndredMb = new int8_t[block];
            std::memset(houndredMb, 0, block);
            std::cout << "houndredMb_c(): 100 Mb allocated!!!\n";
        };

        ~houndredMb_c() {
            delete[] houndredMb;

            std::cout << "houndredMb_c(): 100 Mb freed!!!\n";
        };
};

void shared_ptrAlloc(const function<string()> F);
void unique_ptrAlloc(const function<void()> F);
void weak_ptrAlloc();

#endif