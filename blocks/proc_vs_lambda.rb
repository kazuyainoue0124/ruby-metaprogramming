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
