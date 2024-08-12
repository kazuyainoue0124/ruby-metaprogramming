# カレントクラスのメソッド定義の中で、そのメソッドを再定義すると、そのメソッドはカレントクラスに追加される
class C
  def m1
    def m2; end
  end
end

class D < C; end

obj = D.new
obj.m1
# C クラスのインスタンスメソッド m1 が呼び出されると、C クラスのインスタンスメソッド m2 が定義される
C.instance_methods(false) #=> [:m1, :m2]
