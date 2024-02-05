#include "slist.h"



static SList *list;
static SList *list2;
static int stat;

void setup_test() {
    stat = slist_new(&list);
    slist_new(&list2);
};

void teardown_test() {
    slist_destroy(list);
    slist_destroy(list2);
};

int main() {
    setup_test();

    int a = symbol();

    char str_a[] = {a, '\0'};

    int b = symbol();

    char str_b[] = {b, '\0'};

    int c = symbol();

    char str_c[] = {c, '\0'};

    int d = symbol();

    char str_d[] = {d, '\0'};

    assert(CC_OK == slist_add(list, str_a));
    assert(CC_OK == slist_add(list, str_b));
    assert(CC_OK == slist_add(list, str_c));
    assert(CC_OK == slist_add(list, str_d));

    void *e;
    slist_get_first(list, &e);
    assert(e != NULL);

    slist_get_last(list, &e);
    assert(e != NULL);

    teardown_test();
    return 0;
}
void _start() { main(); }