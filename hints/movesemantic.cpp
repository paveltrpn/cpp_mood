
#include <iostream>
#include <memory>
#include <malloc.h>

/*  Класс с тремя конструкторами -
    по умолчанию, перемещения и копирования и 
    операторами копирования и перемещения.
    Заодно здесь памятка про выделение памяти в С++,
    в С есть malloc() и free(), тут мы имеем
    new и delete (и delete[]) */

/*  bool is_one_of - переменная, принимающая результат
    шаблонного выражения (std::is_same_v<T, Args> || ...), использующего variadic template,
    в котором проверяется соответствие типа Т списку типов Args. */
template<class T, class ... Args>
constexpr bool is_one_of = (std::is_same_v<T, Args> || ...);



//   Стандарт C++ говорит следующее [п.14.1.2]:
//   "There is no semantic difference between class and typename in a template-parameter." */
template <typename T>
class move_sem_c {
    private:
        size_t allocated;
        std::unique_ptr<T[]> heap;

        //    static_assert() проверяет соответствие типа Т списку типов.
        //    может находится в любом месте кода  В отличие от assert, который выполняется во 
        //    время выполнения, static_assert выполняется во время компиляции, вызывая ошибку 
        //    компилятора, если условие не является истинным. Если условие ложное, то выводится 
        //    диагностическое сообщение. Поскольку static_assert не обрабатывается во время выполнения, 
        //    то стейтменты static_assert могут быть размещены в любом месте кода (даже в глобальном пространстве).
        //
        //    move_sem_c<T> bar - примет только Int и Float
        static_assert(is_one_of<T, int, float>, "static_assert(): move_sem_c: T *heap - bad type!");

        //    приватный конструктор копирования запрещает копирование экземпляров класса
        move_sem_c(const move_sem_c &other) {
            //size_t size = other.allocated; 
        };

    public:
        move_sem_c() {
            allocated = 0;
            heap = nullptr;
        };

        move_sem_c(size_t size) {
            allocated = size*sizeof(T);
            heap = std::make_unique<T[]>(allocated);
        }

        move_sem_c(const move_sem_c &&other) {

        }

        ~move_sem_c () {
            allocated = 0;
        };

        //   malloc_usable_size(void *foo)  -  obtain  size of block of memory allocated from
        //   heap. The main use of this function is for debugging and introspection.
        void show_allocated() {
            std::cout << "move_sem_c(this) - " << this << ": allocated - " <<
                malloc_usable_size(heap.get())/sizeof(T) << "\n" << std::endl;
        };
};

template <typename T>
class first_foo_c {
    private:
        T bar;
        //   проверка на соответствие Т типу int. Работает только с одним аргументом
        //   в отличии от варианта выше на основе variadic template. В общем относительно
        //   бесполезно 
        static_assert(std::is_same_v<T, int>, "static_assert(): first_foo_c: T bar - bad type!");

    public:
        first_foo_c() {

        };

        ~first_foo_c() {

        };
};

int movesemantic_test() {
    std::cout << "TEST - movesemantic.cpp" << "\n" << std::endl;

    move_sem_c<int> bar(1);
    bar.show_allocated();

    //move_sem_c<int> bar_second(bar); нельзя, т.к. конструктор копирования приватный 

    first_foo_c<int> bar2;

    return 0;
}