# SWIG_Python_Example_ZH_CN

## 中文说明

Swig Python3.x示例代码中文翻译及Makefile修订

由于项目需要（使用python作为封装代码，使用cpp编写程序核心代码），最近学习了如何使用swig。在此过程中，除了在博客园看到官方文档的中文翻译外，未看到其他有用的中文资料。因此我翻译了官方提供的示例代码（中的注释），并重写了Makefile以便编译。

在子文件夹中使用`make`编译后即可看到示例代码`runme.py`的输出内容，使用`make clean`即可清除编译过程中生成的中间文件。

请确保你已经实现安装了`make`和`gcc`。

## English Discription

Chinese (simple) translation of Swig Python3.x example codes and modification of Makefile.

Recently, I learned how to use swig in python due to project's need which is to write wrapping codes with python and core codes with cpp. During this process, howerver, I did not find any useful information in Chinese except translation of official documents. So here I translate those official example codes provided by siwg and modificate Makefile to make sure they can be compiled successfully.

After running `make` in subdirectory, you can see the outputs of 'runme.py'. You can also clean all tempotary files produced during compiling process by running `make clean`.

Please make sure you have installed  `make` and `gcc` beforehand.
