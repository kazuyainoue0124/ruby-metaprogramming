# include でクラスメソッドを追加するためには、クラスメソッドを追加したいクラスの特異クラスに include する必要がある
module MyModule
  def my_method; 'hello'; end
end

class MyClass
  class << self
    include MyModule
  end
end

MyClass.my_method  #=> "hello"
