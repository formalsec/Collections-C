#include "deque.h"
#include "utils.h"
#include <wasp.h>

static Deque *deque;
static DequeConf conf;
int stat;

void setup_tests() { stat = deque_new(&deque); }

void teardown_tests() { deque_destroy(deque); }

int main() {
    setup_tests();

    int *a = malloc(sizeof(int));
    int *b = malloc(sizeof(int));
    int *c = malloc(sizeof(int));

    int x = __WASP_symb_int("x");
    int y = __WASP_symb_int("y");
    int z = __WASP_symb_int("z");

    *a = x;
    *b = y;
    *c = z;

    deque_add_last(deque, a);
    deque_add_last(deque, b);
    deque_add_last(deque, c);

    Deque *cpy;
    deque_copy_deep(deque, copy, &cpy);

    int size = deque_size(cpy);
    __WASP_assert(3 == size);

    int *ca;
    deque_get_at(cpy, 0, (void *)&ca);
    int *cb;
    deque_get_at(cpy, 1, (void *)&cb);
    int *cc;
    deque_get_at(cpy, 2, (void *)&cc);

    __WASP_assert(x == *ca);
    __WASP_assert(y == *cb);
    __WASP_assert(z == *cc);
    deque_destroy_cb(cpy, free);
    free(a);
    free(b);
    free(c);

    teardown_tests();
    return 0;
}
