# M2もM1をインクルードしているが、M1はM3のprependメソッドで追加されているため、M2の継承チェーンには含まれない
# つまりRubyではモジュールがすでに継承チェーンに含まれている場合、2回目以降のインクルードやprependは無視される
module M1; end

module M2
  include M1
end

module M3
  prepend M1
  include M2
end

puts M3.ancestors
# M1
# M3
# M2
# と表示される
