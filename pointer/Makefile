# 当前所用Python的<Python.h>所在文件夹
PYTHON_HEADER = <your_python_header_dir>
# 当前所用Python的`libpython3.xm.so`文件所在文件夹
PYTHON_LIB = <your_python_library_dir>
# swig的header所在文件夹
SWIG_LIB = <your_swig_library_dir>

# 1. 调用swig处理接口文件
example_wrap.cxx example.py : example.i
	swig -c++ -python example.i

# 2. 编译cpp源代码
example.o : example.c
	g++ -c -fPIC -I $(PYTHON_HEADER) example.c

# 3. 编译cpp封装代码
example_wrap.o : example_wrap.cxx
	g++ -c -fPIC -I $(PYTHON_HEADER) -I $(SWIG_LIB) example_wrap.cxx

# 4. 生成共享库
_example.so : example.o example_wrap.o
	g++ -shared example.o example_wrap.o -o _example.so -L $(PYTHON_LIB)

# 5. 测试Python封装模块
test:
	python runme.py

all: _example.so test

clean:
	rm -f *.o *.so *example_wrap.* example.py*
	rm -rf __pycache__

.PHONY: clean test all

.DEFAULT_GOAL := all
