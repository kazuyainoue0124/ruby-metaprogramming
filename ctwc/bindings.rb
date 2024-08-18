# Binding はスコープをオブジェクトとして保持するクラス
class MyClass
  def my_method
    @x = 1
    binding
  end
end

b = MyClass.new.my_method

# eval は Binding オブジェクトを受け取ることができる
# eval の第二引数に Binding オブジェクトを渡すと、そのスコープで評価される
eval "@x", b  # => 1

# Ruby には TOPLEVEL_BINDING というトップレベルのスコープを保持する定数がある
class AnotherClass
  def my_method
    eval "self", TOPLEVEL_BINDING
  end
end

AnotherClass.new.my_method  # => main
