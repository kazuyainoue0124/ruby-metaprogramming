# replaceメソッドは配列の中の特定の要素を置き換える
# def replace(array, original, replacement)
#   array.map { |e| e == original ? replacement : e }
# end

# Arrayクラスにreplaceメソッドを移動する
# Arrayクラスにはreplaceという名前のメソッドが存在している
# そのため、Arrayクラスにreplaceメソッドを追加すると、元々のreplaceメソッドが上書きされてしまう
class Array
  def replace(original, replacement)
    map { |e| e == original ? replacement : e }
  end
end

# 元々のreplaceメソッドのテストは以下のようになる
# def test_replace
#   original = ['one', 'two', 'one', 'three']
#   replaced = replace(original, 'one', 'zero')
#   assert_equal ['zero', 'two', 'zero', 'three'], replaced
# end

# Arrayクラスに移動した後のreplaceメソッドのテストは以下のようになる
# def test_replace
#   original = ['one', 'two', 'one', 'three']
#   replaced = original.replace('one', 'zero')
#   assert_equal ['zero', 'two', 'zero', 'three'], replaced
# end
