# inherited メソッドは Class のインスタンスメソッド
# クラスが継承されたときに　 Ruby によって呼び出される
# Class#inherited はデフォルトでは何もしない
# Class#inherited をオーバーライドすることで、継承されたときに特定の処理を行うことができる
# Class#inherited のように特定のイベントが発生したときに呼び出されるメソッドをフックメソッドと呼ぶ
class String
  def self.inherited(subclass)
    puts "#{self} は #{subclass} に継承されました"
  end
end

class MyString < String; end
#=> String は MyString に継承されました
