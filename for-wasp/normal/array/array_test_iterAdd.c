#include "array.h"



static Array *v1;
static Array *v2;
static ArrayConf vc;
static int stat;

int main() {
    stat = array_new(&v1);

    int a = symbol();
    int b = symbol();
    int c = symbol();
    int d = symbol();

    int N = symbol();

    assume(c != a && c != b && c != d && c != N);

    array_add(v1, &a);
    array_add(v1, &b);
    array_add(v1, &c);
    array_add(v1, &d);

    ArrayIter iter;
    array_iter_init(&iter, v1);

    int *e;
    while (array_iter_next(&iter, (void *)&e) != CC_ITER_END) {
        if (*e == c)
            array_iter_add(&iter, &N);
    }

    assert(5 == array_size(v1));

    void *n;
    array_get_at(v1, 3, &n);
    assert(N == *((int *)n));
    assert(1 == array_contains(v1, &N));

    array_get_at(v1, 4, (void *)&n);
    assert(d == *((int *)n));

    array_destroy(v1);

    return 0;
}
