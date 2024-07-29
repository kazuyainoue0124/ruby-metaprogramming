# 継承チェーンにはスーパークラスだけでなく、インクルードしたモジュールも含まれる
module M1
  def my_method
    'M1#my_method()'
  end
end

# M1モジュールをインクルードする
# 継承チェーンはCクラスの１つ上にM1モジュールが追加される
class C
  include M1
end

class D < C
end

puts D.ancestors
# D
# C
# M1
# Object
# Kernel
# BasicObject
# と表示される