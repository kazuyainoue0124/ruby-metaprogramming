# def の代わりに define_method を使うと、トップレベルの変数をメソッド内から参照できる

# Class.new, define_method を使って他のスコープを参照することをフラットスコープという
my_var = "成功"

MyClass = Class.new do
  p "クラス定義の中は #{my_var}!"

  define_method :my_method do
    p "メソッド定義の中も#{my_var}!"
  end
end

MyClass.new.my_method
# "クラス定義の中は 成功!"
# "メソッド定義の中も成功!"
