# 複数のメソッドで変数を共有したいが、その他からは参照されたくない例
# フラットスコープで定義すれば実現できる
# この方法を共有スコープという
def define_methods
  shared = 0

  Kernel.send :define_method, :counter do
    shared
  end

  Kernel.send :define_method, :inc do |x|
    shared += x
  end
end

define_methods

puts counter #=> 0
inc(4)
puts counter #=> 4
