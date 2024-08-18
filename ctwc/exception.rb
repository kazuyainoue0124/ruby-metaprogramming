# irb は内部的に eval メソッドを使っている
# lib/irb/workspace.rb の以下の箇所で使われている
# https://github.com/ruby/ruby/blob/d450f9d6a28f01b7ca6030a925921dbf35cee439/lib/irb/workspace.rb#L120

# このファイルは2行目で例外が発生する
x = 1 / 0
#=> divided by 0 (ZeroDivisionError)
