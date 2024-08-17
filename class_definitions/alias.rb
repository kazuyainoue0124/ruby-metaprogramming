# Module#alias_method を使えば　Ruby のメソッドにエイリアス（別名）をつけることができる。
# alias_method :new_name, :old_name という形式で使う。
class MyClass
  def my_method; 'my_method()'; end
  alias_method :m, :my_method
end

obj = MyClass.new
obj.my_method  #=> "my_method()"
obj.m         #=> "my_method()"
