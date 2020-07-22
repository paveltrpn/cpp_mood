
#include <iostream>
#include <utility>
#include <vector>
#include <cmath>
#include <array>

#include "canvas.h"

// $ git clone git://github.com/arashpartow/bitmap
#include "bitmap_image.hpp"

using namespace std;

typedef pair<int32_t, int32_t> point_t;

enum dec {X, Y};

constexpr int32_t CANVAS = 32;

/*	multidimensional array mapping, array[i][j]
	row-wise (C, C++):
	(0	1)
	(2	3)

	column-wise (Fortran, Matlab):
	(0	2)
	(1	3)
*/

constexpr int32_t id_rw(int32_t i, int32_t j, int32_t n) {
	return (i*n + j);
};

constexpr int32_t id_cw(int32_t i, int32_t j, int32_t n) {
	return (j*n + i);
};

// 
// Алгоритм Бразенхема
// 
vector<point_t> brasenham_line(point_t start, point_t end) {
    int32_t dX = abs(end.first - start.first);
    int32_t dY = abs(end.second - start.second);
    int32_t signX;
    int32_t signY;
    int32_t err2, err = dX - dY;
    vector<point_t> rt;
    point_t now_point = start;

    if (start.first < end.first) {
        signX = 1;
    } else {
        signX = -1;
    }

    if (start.second < end.second) {
        signY = 1;
    } else {
        signY = -1;
    }

    rt.push_back(end);

    while ((now_point.first != end.first) || (now_point.second != end.second)) {
        rt.push_back(now_point);

        err2 = err * 2;

        if(err2 > -dY) {
            err -= dY;
            now_point.first += signX;
        }

        if(err2 < dX) {
            err += dX;
            now_point.second += signY;
        }
    }
    
    return rt; 
}

// 
// Возвращает канву из нулей, с нарисованной на ней единицами линией.
// Линенйный массив размером с CANVAS*CANVAS цифр с 0 или 1 в каждом элементе.
// Заполняет соответствущим значением каждый элемент так:
// - перебираем все элементы массива и записываем в каждый 0
// - перебираем вектор пар, соответствующих линии на рисунке
// - если i-й элемент массива соответствует точке на линии, то в
// него пишем 1. 
// 
array<int32_t, CANVAS*CANVAS> make_canvas(const vector<point_t> &line) {
    array<int32_t, CANVAS*CANVAS> rt;

    for (size_t i = 0; i < CANVAS*CANVAS; i++) {
        rt[i] = 0;
        for (const auto &pt: line) {
            if (id_rw(pt.first, pt.second, CANVAS) == i) {
                rt[i] = 1;
            }
        }
    }

    return rt;
}

int main(int argc, char **argv) {
    vector<point_t> line;

    line = brasenham_line({6,4}, {20, 30});

    auto cnvs = make_canvas(line);

    cout << "\n";
    for (size_t i = 0; i < CANVAS*CANVAS; i++) {
        //cout << pt.first << " " << pt.second << "\n";
        cout << cnvs[i] << " ";

        if (((i+1) % CANVAS) == 0) {
            cout << "\n";
        }
    }
    cout << "\n";

    return 0;
}