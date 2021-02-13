
#ifndef __common_h__
#define __common_h__

#include <iostream>
#include <fstream>
#include <vector>
#include <fmt/core.h>

using namespace std;

class file_c
{
    private:
        string fname;
        fstream file;
        size_t fsize;
        vector<string> content;

        file_c(file_c &fc) = delete;
        file_c(file_c &&fc) = delete;
        file_c &operator=(file_c &fc) = delete;

    public:
        file_c();
        file_c(string name);

        file_c &operator=(file_c &&fc);

        ~file_c();

        void readStrings();
        size_t getFileSize();
        string getFileName();
        void printAll();
};

#endif