# Proc と lambda の違いは以下の2点
# 1. return の扱い
# 2. 引数のチェック

# 1. return の扱い

# lambda の場合
# return は lambda 自体の中でのみ効果を持つ
# この例では lambda の実行が終了し double メソッドに制御が戻る
def double(callable_object)
  callable_object.call * 2
end

l = lambda { return 10 }
double(l) #=> 20

# Proc の場合
# return は Proc が定義されたコンテキストから抜け出す
def another_double
  p = Proc.new { return 10 }
  result = p.call
  return result * 2 # ここまで来ない
end

another_double #=> 10

# 2. 引数のチェック

# lambda の場合
# lambda の方が引数のチェックが厳しい
p = lambda { |a, b| [a, b] }
p.call(1, 2)    #=> [1, 2]
p.call(1, 2, 3) #=> wrong number of arguments (given 3, expected 2) (ArgumentError)
p.call(1)       #=> wrong number of arguments (given 1, expected 2) (ArgumentError)

# Proc の場合
# Proc は引数が多ければ切り落とし、少なければ　　nil の割り当てをしてくれる
p = Proc.new { |a, b| [a, b] }
p.call(1, 2)    #=> [1, 2]
p.call(1, 2, 3) #=> [1, 2]
p.call(1)       #=> [1, nil]