void assume(int);
void assert(int);
void *alloc(int, int);
void dealloc(void *);
int sym_int(char *);
typedef char int8_t;
typedef short int16_t;
typedef int int32_t;
typedef long int64_t;
typedef unsigned char uint8_t;
typedef unsigned short uint16_t;
typedef unsigned int uint32_t;
typedef unsigned long uint64_t;
typedef int bool;
typedef int uintptr_t;
typedef unsigned long size_t;
enum cc_stat
{
  CC_OK = 0,
  CC_ERR_ALLOC = 1,
  CC_ERR_INVALID_CAPACITY = 2,
  CC_ERR_INVALID_RANGE = 3,
  CC_ERR_MAX_CAPACITY = 4,
  CC_ERR_KEY_NOT_FOUND = 6,
  CC_ERR_VALUE_NOT_FOUND = 7,
  CC_ERR_OUT_OF_RANGE = 8,
  CC_ITER_END = 9
};
int cc_common_cmp_str(const void *key1, const void *key2);
void *malloc(unsigned int size);
void *calloc(unsigned int nmemb, unsigned int size);
void free(void *ptr);
void *memset(void *s, int c, size_t n);
int strcmp(const char *s1, const char *s2);
void *memcpy(void *dst, const void *src, unsigned int n);
void *memmove(void *dst, const void *src, unsigned int n);
void qsort(void *base, size_t nmemb, size_t size, int (*compar)(const void *, const void *));
typedef struct array_s Array;
typedef struct array_conf_s
{
  size_t capacity;
  float exp_factor;
  void *(*mem_alloc)(size_t size);
  void *(*mem_calloc)(size_t blocks, size_t size);
  void (*mem_free)(void *block);
} ArrayConf;
typedef struct array_iter_s
{
  Array *ar;
  size_t index;
  bool last_removed;
} ArrayIter;
typedef struct array_zip_iter_s
{
  Array *ar1;
  Array *ar2;
  size_t index;
  bool last_removed;
} ArrayZipIter;
enum cc_stat array_new(Array **out);
enum cc_stat array_new_conf(const ArrayConf * const conf, Array **out);
void array_conf_init(ArrayConf *conf);
void array_destroy(Array *ar);
void array_destroy_cb(Array *ar, void (*cb)(void *));
enum cc_stat array_add(Array *ar, void *element);
enum cc_stat array_add_at(Array *ar, void *element, size_t index);
enum cc_stat array_replace_at(Array *ar, void *element, size_t index, void **out);
enum cc_stat array_swap_at(Array *ar, size_t index1, size_t index2);
enum cc_stat array_remove(Array *ar, void *element, void **out);
enum cc_stat array_remove_at(Array *ar, size_t index, void **out);
enum cc_stat array_remove_last(Array *ar, void **out);
void array_remove_all(Array *ar);
void array_remove_all_free(Array *ar);
enum cc_stat array_get_at(Array *ar, size_t index, void **out);
enum cc_stat array_get_last(Array *ar, void **out);
enum cc_stat array_subarray(Array *ar, size_t from, size_t to, Array **out);
enum cc_stat array_copy_shallow(Array *ar, Array **out);
enum cc_stat array_copy_deep(Array *ar, void *(*cp)(void *), Array **out);
void array_reverse(Array *ar);
enum cc_stat array_trim_capacity(Array *ar);
size_t array_contains(Array *ar, void *element);
size_t array_contains_value(Array *ar, void *element, int (*cmp)(const void *, const void *));
size_t array_size(Array *ar);
size_t array_capacity(Array *ar);
enum cc_stat array_index_of(Array *ar, void *element, size_t *index);
void array_sort(Array *ar, int (*cmp)(const void *, const void *));
void array_map(Array *ar, void (*fn)(void *));
void array_reduce(Array *ar, void (*fn)(void *, void *, void *), void *result);
enum cc_stat array_filter_mut(Array *ar, bool (*predicate)(const void *));
enum cc_stat array_filter(Array *ar, bool (*predicate)(const void *), Array **out);
void array_iter_init(ArrayIter *iter, Array *ar);
enum cc_stat array_iter_next(ArrayIter *iter, void **out);
enum cc_stat array_iter_remove(ArrayIter *iter, void **out);
enum cc_stat array_iter_add(ArrayIter *iter, void *element);
enum cc_stat array_iter_replace(ArrayIter *iter, void *element, void **out);
size_t array_iter_index(ArrayIter *iter);
void array_zip_iter_init(ArrayZipIter *iter, Array *a1, Array *a2);
enum cc_stat array_zip_iter_next(ArrayZipIter *iter, void **out1, void **out2);
enum cc_stat array_zip_iter_add(ArrayZipIter *iter, void *e1, void *e2);
enum cc_stat array_zip_iter_remove(ArrayZipIter *iter, void **out1, void **out2);
enum cc_stat array_zip_iter_replace(ArrayZipIter *iter, void *e1, void *e2, void **out1, void **out2);
size_t array_zip_iter_index(ArrayZipIter *iter);
const void * const *array_get_buffer(Array *ar);
static Array *v1;
static Array *v2;
static ArrayConf vc;
static int stat;
int main()
{
  stat = array_new(&v1);
  int a = sym_int("a");
  int b = sym_int("b");
  int c = sym_int("c");
  int d = sym_int("d");
  assume(__logand(__logand(__logand(__logand(__logand(a != b, a != c), a != d), b != c), b != d), c != d));
  array_add(v1, &a);
  array_add(v1, &b);
  array_add(v1, &c);
  array_add(v1, &c);
  int cc = array_contains(v1, &c);
  int ca = array_contains(v1, &a);
  int cd = array_contains(v1, &d);
  assert(2 == cc);
  assert(1 == ca);
  assert(0 == cd);
  array_destroy(v1);
  return 0;
}

