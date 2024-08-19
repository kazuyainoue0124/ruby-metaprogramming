# Ruby では、セキュリティ上の理由から、外部からの入力を受け取った文字列は tainted という状態になる
# tainted な文字列は、他の文字列と結合することができるが、その結果も tainted になる
# tainted な文字列を使ってシステムコマンドを実行すると、セキュリティホールになる可能性があるため、
# tainted な文字列を使ってシステムコマンドを実行することはできない
# Ruby ではセーフレベルという概念があり、セーフレベルが 1 以上の場合、tainted な文字列を使ってシステムコマンドを実行することはできない

# ユーザー入力を読み込む
user_input = "User input: #{gets()}"
puts user_input.tainted? # => true と表示されてほしいが Ruby 3.3 には tainted? メソッドがない
#=> undefined method `tainted?' for an instance of String (NoMethodError)
