# Module#append_features は　Module#included と同じように、モジュールをインクルードするクラスに対して呼び出される。
# included はフックメソッドなので中身はなく、オーバーライドして使う
# append_features は中身が存在する
# append_features はインクルードされたモジュールが継承チェーンに含まれているかを確認し、含まれていなければ追加する
# 以下のように append_features をオーバーライドすると、インクルードされたモジュールが継承チェーンに含まれなくなる
module M
  def self.append_features(base); end
end

class C
  include M
end

C.ancestors  #=> [C, Object, PP::ObjectMixin, Kernel, BasicObject]
