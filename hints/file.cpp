
#include <iostream>
#include <string>
#include <fstream>
#include <memory>
#include <vector>

#include "hints.h"

/*  Читаем из бинарного файла n-байт */
int read_binary_n_bytes(std::string fname, std::size_t size) {
    std::ifstream fp(fname, std::ifstream::binary);
    std::unique_ptr<char> buffer;
    std::size_t file_size;
    
    if (!fp) {
        std::cout << "read_binary_n_bytes(): error opening file '" << fname << "." << std::endl;
        return 1;
    }

    /*  Определяем размер файла. Ставим каретку в конец файла, 
        получаем позицию каретки в конкретном filestram и
        возвращаемся в начало */
    fp.seekg(0,std::ios_base::end);
    file_size = static_cast<uint32_t>(fp.tellg());
    fp.seekg(0,std::ios_base::beg);

    if (file_size < size) {
        std::cout << "read_binary_n_bytes(): error, trying to read too many bytes!" << std::endl;
        fp.close();
        return 1;
    }

    fp.read(reinterpret_cast<char*>(&buffer), size);

    fp.close();

    return 0;
}

int read_file_by_string(std::string fname) {
    std::ifstream fp;
    std::vector<std::string> in_file;
    std::string cur_string;

    if (!fp) {
        std::cout << "read_file_by_string(): error opening file '" << fname << "." << std::endl;
        return 1;
    }

    /* Читаем следующую строку. std::getline cчитывает неформатированные данные из потока в строку. 
    Останавливается, как только найден символ, равный разделителю, или исчерпан поток. 
    Первая версия использует в качестве разделителя delim, вторая — '\n'. 
    Символ-разделитель удаляется из потока и не помещается в строку. */
    for (;std::getline(fp,cur_string);) {
        /* Добавляем её в выходной вектор */
        in_file.push_back(cur_string);
    }

    fp.close();

    return 0;
}

int file_test() {
    return 1;
}