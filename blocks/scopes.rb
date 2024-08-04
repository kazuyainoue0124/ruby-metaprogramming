# Scope を理解するためのサンプルコード
v1 = 1
class MyClass
  v2 = 2
  p local_variables #=> [:v2]
  def my_method
    v3 = 3
    p local_variables
  end
  p local_variables #=> [:v2]
end

obj = MyClass.new
obj.my_method #=> [:v3]
obj.my_method #=> [:v3]
p local_variables #=> [:v1, :obj]
