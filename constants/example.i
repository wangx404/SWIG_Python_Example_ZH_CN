/* File : example.i */
%module example

/* 一系列宏定义，可通过module.var.name调用 */
#define    ICONST      42
#define    FCONST      2.1828
#define    CCONST      'x'
#define    CCONST2     '\n'
#define    SCONST      "Hello World"
#define    SCONST2     "\"Hello World\""

/* 在宏定义中可使用表达式 */
#define    EXPR        ICONST + 3*(FCONST)

/* 无效的宏定义，不会进行任何处理 */
#define    EXTERN      extern

/* BAR未定义，因此是无效的宏定义 */
#define    FOO         (ICONST + BAR)

/* 也可使用`%constant`命令定义常量（为了兼容旧版本的swig） */
%constant int iconst = 37;
%constant double fconst = 3.14;


