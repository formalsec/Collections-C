#include "slist.h"
#include <wasp.h>

static SList *list;
static SList *list2;
static int stat;

bool pred1(const void *e) { return *(int *)e == 0; }

bool pred2(const void *e) { return *(int *)e >= 3; }

bool pred3(const void *e) { return *(int *)e > 0; }

int a, b, c, d, e, f, g, h;

void setup_test() {
    slist_new(&list), slist_new(&list2);

    a = __WASP_symb_int("a");
    b = __WASP_symb_int("b");
    c = __WASP_symb_int("c");
    d = __WASP_symb_int("d");
    e = __WASP_symb_int("e");
    f = __WASP_symb_int("f");
    g = __WASP_symb_int("g");
    h = __WASP_symb_int("h");

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

void CHECK_EQ_LIST(SList *l1, SList *l2) {
    __WASP_assert(slist_size(l1) == slist_size(l2));
    SListZipIter zip;
    slist_zip_iter_init(&zip, l1, l2);
    void *e1, *e2;
    while (slist_zip_iter_next(&zip, &e1, &e2) != CC_ITER_END) {
        __WASP_assert(e1 == e2);
    }
}

int main() {
    setup_test();

    __WASP_assume(a != 0 && b != 0 && c != 0 && d != 0);

    __WASP_assert(4 == slist_size(list));
    slist_filter_mut(list, pred1);

    __WASP_assert(0 == slist_size(list));

    void *e = NULL;
    slist_get_first(list, &e);
    __WASP_assert(e == NULL);

    teardown_test();
    return 0;
}
