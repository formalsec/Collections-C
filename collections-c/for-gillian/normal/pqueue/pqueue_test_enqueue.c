#include "pqueue.h"
#include <gillian-c/gillian-c.h>

struct Pair {
  int a, b;
};

static struct Pair A, B, C;

static int comp(const void *a, const void *b) {
    int alpha1 = ((struct Pair *)a)->a, beta1 = ((struct Pair *)a)->b;
    int alpha2 = ((struct Pair *)b)->a, beta2 = ((struct Pair *)b)->b;
    if (alpha1 != alpha2)
        return alpha1 - alpha2;
    else
        return beta1 - beta2;
}

static int comp2(const void *a, const void *b) {
    return *((int *)a) - *((int *)b);
}

static PQueue *p1, *p2;

void setup_tests() {
    pqueue_new(&p1, comp2);
    PQueueConf cfg;
    pqueue_conf_init(&cfg, comp);
    pqueue_new_conf(&cfg, &p2);
}

void teardown_tests() {
    pqueue_destroy(p1);
    pqueue_destroy(p2);
}

int main() {
    setup_tests();

    int a = __builtin_annot_intval("symb_int", a);
    int b = __builtin_annot_intval("symb_int", b);
    int c = __builtin_annot_intval("symb_int", c);
    int d = __builtin_annot_intval("symb_int", d);

    int e = __builtin_annot_intval("symb_int", e);
    int f = __builtin_annot_intval("symb_int", f);
    int *ptr;
 
    ASSUME(e < 8388608 && e > -8388608);
    ASSUME(f < 8388608 && f > -8388608);

    pqueue_push(p1, (void *)&f);
    pqueue_top(p1, (void *)&ptr);
    ASSERT(&f == ptr);

    pqueue_push(p1, (void *)&e);
    pqueue_top(p1, (void *)&ptr);
    ASSERT(((e > f) && (e == *ptr)) || ((e <= f) && (f == *ptr)));

    ASSUME(a < 8388608 && a > -8388608);
    ASSUME(b < 8388608 && b > -8388608);
    ASSUME(c < 8388608 && c > -8388608);
    ASSUME(d < 8388608 && d > -8388608);

    struct Pair *ptr2;
    A.a = a, A.b = b;
    B.a = c, B.b = d;

    pqueue_push(p2, (void *)&A);
    pqueue_top(p2, (void *)&ptr2);
    ASSERT(&A == ptr2);

    pqueue_push(p2, (void *)&B);
    pqueue_top(p2, (void *)&ptr2);

    ASSERT( ((comp(&A, &B) >= 0) && ((a == ptr2->a) && (b == ptr2->b))) ||
            ((comp(&A, &B) < 0)  && ((c == ptr2->a) && (d == ptr2->b))) );

    teardown_tests();
    return 0;
}
