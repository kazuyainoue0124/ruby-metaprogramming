# instance_eval を使うとアクセサメソッドがなくてもオブジェクトのプロパティにアクセスできる
class MyClass
  def initialize
    @v = 1
  end

  obj = MyClass.new

  obj.instance_eval do
    puts self #=> #<MyClass:0x00000001024b7cf8>
    puts @v   #=> 1
  end
end
