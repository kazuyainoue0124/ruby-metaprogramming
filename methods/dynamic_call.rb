class MyClass
  def my_method(my_arg)
    my_arg * 2
  end
end

obj = MyClass.new
# ドット記法を用いた通常のメソッド呼び出し
puts obj.my_method(3) # => 6

# sendメソッドを用いたメソッド呼び出し
# 第1引数にはメソッド名をシンボルで指定（文字列でも可だがシンボルはイミュータブルなので最適）
# 第2引数以降にはメソッドに渡す引数を指定
# sendメソッドを使えばコードの実行時にメソッドを動的に呼び出すことができる
# これを動的ディスパッチと呼ぶ
puts obj.send(:my_method, 3) # => 6