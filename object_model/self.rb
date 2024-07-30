# レシーバを指定しないメソッド呼び出しは、暗黙的にselfをレシーバとして呼び出される
class MyClass
  def testing_self
    @var = 10
    my_method
    self
  end

  def my_method
    @var += 1
  end
end

obj = MyClass.new
p obj.testing_self #=> #<MyClass:0x0000000100b879e0 @var=11>