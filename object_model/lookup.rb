# Rubyはクラスのメソッドを探す際に、継承チェーンをたどる
class MyClass
  def my_method; 'my_method()'; end
end

class MySubclass < MyClass
end

obj = MySubclass.new
# MySubclassにメソッド定義がないのでスーパークラスのメソッドを探して呼び出す
puts obj.my_method # => "my_method()"
# ancestorsメソッドを使うと、クラスの継承チェーンを調べることができる
puts MySubclass.ancestors # => [MySubclass, MyClass, Object, Kernel, BasicObject]