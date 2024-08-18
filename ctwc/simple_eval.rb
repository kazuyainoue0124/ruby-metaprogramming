# Kernel#eval は文字列を Ruby　のコードとして評価するメソッド
array = [10, 20]
element = 30
eval("array << element")  # => [10, 20, 30]
