# 渡されたブロックを他のメソッドに渡したい場合に & を使う
def math(a, b)
  yield(a, b)
end

def do_math(a, b, &operation)
  math(a, b, &operation)
end

do_math(2, 3) { |x, y| x * y } #=> 6
