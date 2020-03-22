
#include <iostream>

/* Класс с тремя конструкторами -
    по умолчанию, перемещения и копирования и 
    операторами копирования и перемещения.
    Заодно здесь памятка про выделение памяти в С++,
    в С есть malloc() и free(), тут мы имеем
    new и delete (и delete[])
*/

class move_sem_c {
    private:
        int *heap;

    public:
        move_sem_c() {};
        ~move_sem_c () {};
};

int main(int argc, char **argv) {
    return 0;
}