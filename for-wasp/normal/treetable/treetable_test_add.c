#include "treetable.h"
#include "utils.h"
#include "mockups.h"

static TreeTable *table;

int main() {
    treetable_new(cmp, &table);

    int x = sym_int("x");
    int y = sym_int("y");
    int z = sym_int("z");

    int a = sym_int("a");

    char str_a[] = {a, '\0'};

    int b = sym_int("b");

    char str_b[] = {b, '\0'};

    int c = sym_int("c");

    char str_c[] = {c, '\0'};

    assume(a < b);
    assume(b < c);

    treetable_add(table, &x, str_a);
    treetable_add(table, &y, str_b);
    treetable_add(table, &z, str_c);

    assert(1 == treetable_contains_key(table, &x));
    assert(1 == treetable_contains_key(table, &z));

    treetable_destroy(table);
}