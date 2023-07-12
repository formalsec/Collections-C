#include "deque.h"
#include "utils.h"



static Deque *deque;
static DequeConf conf;
int stat;

void setup_tests() { stat = deque_new(&deque); }

void teardown_tests() { deque_destroy(deque); }

int main() {
    setup_tests();

    int a = symbol();
    assume(a > 0); assume(a < 127);
    char str_a[] = {a, '\0'};

    int b = symbol();
    assume(b > 0); assume(b < 127);
    char str_b[] = {b, '\0'};

    int c = symbol();
    assume(c > 0); assume(c < 127);
    char str_c[] = {c, '\0'};

    int d = symbol();
    assume(d > 0); assume(d < 127);
    char str_d[] = {d, '\0'};

    int e = symbol();
    assume(e > 0); assume(e < 127);
    char str_e[] = {e, '\0'};

    int f = symbol();
    assume(f > 0); assume(f < 127);
    char str_f[] = {f, '\0'};

    int g = symbol();
    assume(g > 0); assume(g < 127);
    char str_g[] = {g, '\0'};

    assume(b != a && b != c && b != d);

    deque_add(deque, str_a);
    deque_add(deque, str_b);
    deque_add(deque, str_c);
    deque_add(deque, str_d);

    Deque *d2;
    deque_new(&d2);

    deque_add(d2, str_e);
    deque_add(d2, str_f);
    deque_add(d2, str_g);

    symb_str(h);
    symb_str(i);

    DequeZipIter zip;
    deque_zip_iter_init(&zip, deque, d2);

    void *e1, *e2;
    while (deque_zip_iter_next(&zip, &e1, &e2) != CC_ITER_END) {
        if (strcmp((char *)e1, str_b) == 0)
            deque_zip_iter_add(&zip, str_h, str_i);
    }

    size_t index;
    deque_index_of(deque, str_h, &index);

    assert(2 == index);

    deque_index_of(deque, str_i, &index);
    assert(2 == index);

    deque_index_of(deque, str_c, &index);
    assert(3 == index);
    assert(1 == deque_contains(deque, str_h));
    assert(1 == deque_contains(d2, str_i));
    assert(5 == deque_size(deque));
    assert(4 == deque_size(d2));
    deque_destroy(d2);

    teardown_tests();
    return 0;
}
