
#include <memory>
#include <iostream>
#include <functional>
#include <string>

#include "smart_ptr.h"

using namespace std;

void shared_ptrAlloc(const std::function<string()> F) {
    // Note that you can't use a shared pointer the same way as a pointer you'd get from new[], 
    // because std::shared_ptr (unlike std::unique_ptr, for example) does not provide operator[]. 
    // You'd have to dereference it: (*buffer)[n] = 'a';
    // Отсюда - https://stackoverflow.com/questions/13794447/can-you-allocate-an-array-with-something-equivalent-to-make-shared

    // Не получается выделить массив объектов с помощью make_shared(),
    // компилятор выдаёт здоровый непонятный трейс
    // auto foo = std::make_shared<houndredMb_c[]>(new houndredMb_c[10]);

    // А вот кнструктором выделить можно.
    auto foo = shared_ptr<houndredMb_c[]>(new houndredMb_c[10]);

    while (true) {
        string word = F();

        if (word == "quit") {
            break;
        }

        if (word == "reset") {
            foo.reset();
            cout << "shared_ptrAlloc(): accept reset command! Free all objects!\n";
        }
    };
}

void unique_ptrAlloc(const std::function<void()> F) {
    auto foo = make_unique<houndredMb_c[]>(10);

    F();
}

void weak_ptrAlloc() {

}
