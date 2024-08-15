# オブジェクトの属性を取得、設定するためのメソッドを定義
class MyClass
  attr_accessor :a
end

obj = MyClass.new
obj.a = 2
obj.a  #=> 2

# クラスの属性を取得、設定するためのメソッドを定義
# ただしこれではすべてのクラスに属性が追加されてしまう
# MyClass クラスだけに属性を追加したい
class MyClass; end

class Class
  attr_accessor :b
end

MyClass.b = 42
MyClass.b  #=> 42

# MyClass クラスだけに属性を追加するためには、クラスメソッドを定義する
class MyClass
  # c はMyClassクラスの属性
  class << self
    attr_accessor :c
  end

  # 以下のようにも書ける
  def MyClass.c=(value)
    @c = value
  end

  def MyClass.c
    @c
  end
end

MyClass.c = 'It works!'
MyClass.c  #=> "It works!"
