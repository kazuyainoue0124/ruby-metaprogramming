my_var = "成功"

# class キーワードの代わりに Class.new を使ってクラスを定義する
MyClass = Class.new do
  # これでクラスの中からトップレベルの変数を参照できる
  p "クラス定義の中は #{my_var}!"

  def my_method
    # メソッドからは参照できない
    p "メソッド定義の中も #{my_var}!"
  end
end

obj = MyClass.new #=> "クラス定義の中は 成功!"
obj.my_method #=> NameError
