/* File : example.i */
%module example

%{
extern void add(int *, int *, int *);
extern void sub(int *, int *, int *);
extern int divide(int, int, int *);
%}

/* 本示例演示了操作C指针的一系列不同技术 */

/* 首先我们使用指针库 */
extern void add(int *x, int *y, int *result);
%include cpointer.i
/* 调用`%pointer_functions(type, name)`指令后模块中将出现 
   `new_name, copy_name, delete_name, name_assign, name_value`等指针操作函数 */
%pointer_functions(int, intp);

/* 使用`typemaps`将`void sub(int*, int*, int*)`函数的前两个参数映射为Python的参数，
   将最后一个参数映射为Python的返回值 */
%include typemaps.i
extern void sub(int *INPUT, int *INPUT, int *OUTPUT);

/* 最后我们使用`typemaps`和`%apply`指令，将类型映射从一个指针copy至另一个指针 */
%apply int *OUTPUT { int *r }; // int* r对应返回值
extern int divide(int n, int d, int *r);




