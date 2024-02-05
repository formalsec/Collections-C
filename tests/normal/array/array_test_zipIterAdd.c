#include "array.h"



static Array *v1;
static Array *v2;
static ArrayConf vc;
static int stat;

int main() {
    stat = array_new(&v1);

    int a = symbol();

    char str_a[] = {a, '\0'};

    int b = symbol();

    char str_b[] = {b, '\0'};

    int c = symbol();

    char str_c[] = {c, '\0'};

    int d = symbol();

    char str_d[] = {d, '\0'};

    int e = symbol();

    char str_e[] = {e, '\0'};

    int f = symbol();

    char str_f[] = {f, '\0'};

    int g = symbol();

    char str_g[] = {g, '\0'};

    int h = symbol();

    char str_h[] = {h, '\0'};

    int i = symbol();

    char str_i[] = {i, '\0'};

    assume((!(strcmp(str_a, str_b) == 0)) && (!(strcmp(str_c, str_b) == 0)) &&
           (!(strcmp(str_c, str_a) == 0)) && (!(strcmp(str_c, str_d) == 0)) &&
           (!(strcmp(str_d, str_b) == 0)) && (!(strcmp(str_a, str_h) == 0)) &&
           (!(strcmp(str_c, str_h) == 0)) && (!(strcmp(str_d, str_h) == 0)) &&
           (!(strcmp(str_b, str_h) == 0)) && (!(strcmp(str_i, str_e) == 0)) &&
           (!(strcmp(str_i, str_g) == 0)) && (!(strcmp(str_i, str_f) == 0)));

    array_add(v1, str_a);
    array_add(v1, str_b);
    array_add(v1, str_c);
    array_add(v1, str_d);

    array_new(&v2);

    array_add(v2, str_e);
    array_add(v2, str_f);
    array_add(v2, str_g);

    ArrayZipIter zip;
    array_zip_iter_init(&zip, v1, v2);

    void *e1, *e2;
    while (array_zip_iter_next(&zip, &e1, &e2) != CC_ITER_END) {
        if (strcmp((char *)e1, str_b) == 0)
            array_zip_iter_add(&zip, str_h, str_i);
    }

    size_t index;

    assert(CC_OK == array_index_of(v1, str_h, &index));
    assert(2 == index);
    assert(CC_OK == array_index_of(v2, str_i, &index));
    assert(2 == index);
    assert(CC_OK == array_index_of(v1, str_c, &index));
    assert(3 == index);
    assert(1 == array_contains(v1, str_h));
    assert(1 == array_contains(v2, str_i));
    assert(5 == array_size(v1));
    assert(4 == array_size(v2));

    array_destroy(v2);

    array_destroy(v1);

    return 0;
}
void _start() { main(); }
