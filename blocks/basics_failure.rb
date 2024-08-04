# yield には引数で渡されたブロックが渡される
def a_method(a, b)
  a + yield(a, b)
end

p a_method(1, 2) { |x, y| (x + y) * 3 } # => 10
# yield にはブロックが渡されていない場合、LocalJumpError が発生する
p a_method(1, 2) #=> no block given (yield) (LocalJumpError)