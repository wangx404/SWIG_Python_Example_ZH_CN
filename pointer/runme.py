# file: runme.py

import example

# 首先，使用指针库创建一些对象
print( "Testing the pointer library")
a = example.new_intp()
b = example.new_intp()
c = example.new_intp()
example.intp_assign(a, 37)
example.intp_assign(b, 42)
print( "     a =", a)
print( "     b =", b)
print( "     c =", c)

# 在指针对象上调用add函数
example.add(a, b, c)

# 得到结果
r = example.intp_value(c)
print( "     37 + 42 =", r)

# 清除指针
example.delete_intp(a)
example.delete_intp(b)
example.delete_intp(c)

# 现在尝试一下类型映射库(typemaps)
# 这样的方式会简单许多，因为不再需要操纵指针。
print( "Trying the typemap library")
r = example.sub(37, 42)
print( "     37 - 42 =", r)

# 现在尝试一下具有多个返回值的函数
print( "Testing multiple return values")
q, r = example.divide(42, 37)
print( "     42/37 = %d remainder %d" % (q, r))
