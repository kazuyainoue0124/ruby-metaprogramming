# Method オブジェクトの例
class MyClass
  def initialize(value)
    @x = value
  end

  def my_method
    @x
  end
end

object = MyClass.new(1)
# Object#method を呼び出すとメソッドそのものを Method オブジェクトとして取得できる
# このオブジェクトは Method#call を使って実行できる
m = object.method :my_method
m.call #=> 1
