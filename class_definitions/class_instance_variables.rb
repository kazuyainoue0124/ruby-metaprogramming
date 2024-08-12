# 2つの @my_var は異なるもの
# 1つはクラスインスタンス変数、もう1つはインスタンス変数
# クラスインスタンス変数はクラスメソッドからアクセスできる
# インスタンス変数はインスタンスメソッドからアクセスできる
class MyClass
  @my_var = 1
  def self.read; @my_var; end
  def write; @my_var = 2; end
  def read; @my_var; end
end

obj = MyClass.new
obj.read           #=> nil
obj.write
obj.read           #=> 2
MyClass.read       #=> 1
