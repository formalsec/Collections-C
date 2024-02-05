#include "slist.h"



static SList *list;
static SList *list2;
static int stat;

int a, b, c, d, e, f, g, h;

void setup_test() {
    slist_new(&list), slist_new(&list2);

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

    slist_add(list, va);
    slist_add(list, vb);
    slist_add(list, vc);
    slist_add(list, vd);

    va = (int *)malloc(sizeof(int));
    vb = (int *)malloc(sizeof(int));
    vc = (int *)malloc(sizeof(int));
    vd = (int *)malloc(sizeof(int));

    *va = e;
    *vb = f;
    *vc = g;
    *vd = h;

    slist_add(list2, va);
    slist_add(list2, vb);
    slist_add(list2, vc);
    slist_add(list2, vd);
};

void teardown_test() {
    slist_destroy(list);
    slist_destroy(list2);
};

int main() {
    setup_test();

    int i = symbol();
    int *ii = (int *)malloc(sizeof(int));

    *ii = i;

    slist_add_at(list, ii, 2);
    assert(5 == slist_size(list));

    int *new;
    slist_get_at(list, 2, (void *)&new);
    assert(*ii == *new);
    assert(CC_OK == slist_add_at(list, ii, 4));
    assert(CC_OK == slist_add_at(list, ii, 0));

    void *el;
    slist_get_first(list, &el);
    assert(*ii == *((int *)el));

    slist_get_first(list, &el);
    assert(*ii == *((int *)el));

    teardown_test();
    return 0;
}
void _start() { main(); }
