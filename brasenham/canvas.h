
#ifndef __CANVAS_H__
#define __CANVAS_H__

#include <iostream>
#include <cmath>
#include <algorithm>

// Класс канвы, содержит в себе холст размером cnvs_width*cnvs_height. Глубина цвета только 32 бит,
// формат R8G8B8. 

class canvas_c {
    private:
        uint8_t *data;

        int32_t cnvs_width;
        int32_t cnvs_height;

        static constexpr uint8_t bpp = 3;

        int32_t pen_size = 1;

        uint8_t pen_color_r = 255;
        uint8_t pen_color_g = 255;
        uint8_t pen_color_b = 255;

    public:
        canvas_c(int32_t width, int32_t height) {
            cnvs_height = height;
            cnvs_width = width;

            data = new uint8_t[cnvs_width*cnvs_height*bpp]; 

            // цвет холста по умолчанию - чёрный
            std::fill(data, data + cnvs_width*cnvs_height*bpp, 0);
        }

        ~canvas_c() {
            delete [] data;
        }

        void set_pen_size(int32_t size);
        void set_pen_color(uint8_t r, uint8_t g, uint8_t b);
        void put_pixel(int32_t x, int32_t y);
};

#endif