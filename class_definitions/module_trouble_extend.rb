# Object#extend メソッドは、特異クラスにモジュールを include する。
module MyModule
  def my_method; 'hello'; end
end

obj = Object.new
obj.extend MyModule
obj.my_method  #=> "hello"

class MyClass
  extend MyModule
end

MyClass.my_method  #=> "hello"
