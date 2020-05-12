
#include <iostream>

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

template <typename T>
class move_sem_c {
    private:
        T *heap;
        /*  static_assert() проверяет соответствие типа Т списку типов.
            может находится в любом месте кода  В отличие от assert, который выполняется во 
            время выполнения, static_assert выполняется во время компиляции, вызывая ошибку 
            компилятора, если условие не является истинным. Если условие ложное, то выводится 
            диагностическое сообщение. Поскольку static_assert не обрабатывается во время выполнения, 
            то стейтменты static_assert могут быть размещены в любом месте кода (даже в глобальном пространстве).*/
        static_assert(is_one_of<T, int, float>, "static_assert(): move_sem_c: T *heap - bad type!");

    public:
        move_sem_c() {

        };

        ~move_sem_c () {
            
        };
};

template <typename T>
class first_foo_c {
    private:
        T bar;
        /*  проверка на соответствие Т типу int. Работает только с одним аргументом
            в отличии от варианта выше на основе variadic template. В общем относительно
            бесполезно */
        static_assert(std::is_same_v<T, int>, "static_assert(): first_foo_c: T bar - bad type!");

    public:
        first_foo_c() {

        };

        ~first_foo_c() {

        };
};

int movesemantic_test() {
    move_sem_c<int> bar;
    first_foo_c<int> bar2;

    std::cout << "TEST - movesemantic.cpp" << std::endl;

    return 0;
}