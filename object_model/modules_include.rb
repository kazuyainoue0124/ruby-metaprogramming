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


## prependメソッドを使って継承チェーンにモジュールを追加することもできる
module M2
  def my_method
    'M2#my_method()'
  end
end

# prependメソッドを使ってM2モジュールを追加する
# 継承チェーンはC2クラスの１つ下にM2モジュールが追加される
class C2
  prepend M2
end

class D2 < C2; end

puts D2.ancestors
# D2
# M2
# C2
# Object
# Kernel
# BasicObject
# と表示される