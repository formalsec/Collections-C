#include "list.h"



static List *list1;
static List *list2;

int a, b, c, d, e, f, g, h;

void setup_tests() {
    list_new(&list1), list_new(&list2);

    a = symbol();
    b = symbol();
    c = symbol();
    d = symbol();
    e = symbol();
    f = symbol();
    g = symbol();
    h = symbol();

    int *va = (int *)malloc(sizeof(int));
    int *vb = (int *)malloc(sizeof(int));
    int *vc = (int *)malloc(sizeof(int));
    int *vd = (int *)malloc(sizeof(int));

    *va = a;
    *vb = b;
    *vc = c;
    *vd = d;

    list_add(list1, va);
    list_add(list1, vb);
    list_add(list1, vc);
    list_add(list1, vd);

    va = (int *)malloc(sizeof(int));
    vb = (int *)malloc(sizeof(int));
    vc = (int *)malloc(sizeof(int));
    vd = (int *)malloc(sizeof(int));

    *va = e;
    *vb = f;
    *vc = g;
    *vd = h;

    list_add(list2, va);
    list_add(list2, vb);
    list_add(list2, vc);
    list_add(list2, vd);
}

void teardown_test() {
    list_destroy_cb(list1, free);
    list_destroy(list2);
}

int main() {
    setup_tests();

    List *sub;
    list_sublist(list1, 1, 2, &sub);
    assert(2 == list_size(sub));

    int *s1;
    list_get_at(sub, 1, (void *)&s1);

    int *l2;
    list_get_at(list1, 2, (void *)&l2);
    assert(*s1 == *l2);

    list_destroy(sub);

    teardown_test();
}
void _start() { main(); }