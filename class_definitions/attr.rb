# Ruby ではアクセサメソッドを以下のように書く必要はない
class MyClass
  def my_attribute=(value)
    @my_attribute = value
  end

  def my_attribute
    @my_attribute
  end
end

# attr_accessor を使って以下のように書くだけでアクセサメソッドが定義される
# attr_accessor のようにクラスの定義に影響を与えるメソッドをクラスマクロと呼ぶ
# クラスマクロのその他の例は has_many, belongs_to, validates など
class MyClass
  attr_accessor :my_attribute
end

obj = MyClass.new
obj.my_attribute = 'x'
obj.my_attribute  # => "x"
