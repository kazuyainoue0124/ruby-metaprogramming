# define_methodを使ってメソッドを動的に定義する
# define_methodを用いると実行時にメソッド名を決定できる
# my_methodはMyClassのインスタンスメソッドとして定義される
class MyClass
  define_method :my_method do |my_arg|
    my_arg * 3
  end
end

obj = MyClass.new
puts obj.my_method(2) # => 6
