# include はインスタンスメソッドを追加するだけで、クラスメソッドを追加しない
module MyModule
  def self.my_method; 'hello'; end
end

class MyClass
  include MyModule
end

MyClass.my_method  #=> undefined method `my_method' for class MyClass (NoMethodError)
