/* File : example.c */

/* 参数包含指针的函数 */ 
void add(int *x, int *y, int *result) {
  *result = *x + *y;
}

void sub(int *x, int *y, int *result) {
  *result = *x - *y;
}

/* 通过指针和return同时返回结果的函数 */ 
int divide(int n, int d, int *r) {
   int q;
   q = n/d;
   *r = n - q*d;
   return q;
}
