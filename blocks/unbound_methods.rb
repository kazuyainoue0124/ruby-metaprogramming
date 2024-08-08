# UnboundMethod の使い方
# UnboundMethod は、特定のオブジェクトに束縛されていないメソッドを表すクラスです。
# UnboundMethod オブジェクトを取得するには、Module#instance_method メソッドを使います。
# 以下の例では、MyModule モジュールの my_method メソッドを UnboundMethod オブジェクトとして取得し、
# String クラスに another_method として定義しています。
module MyModule
  def my_method
    42
  end
end

unbound = MyModule.instance_method(:my_method)
unbound.class #=> UnboundMethod

String.send :define_method, :another_method, unbound
"abc".another_method #=> 42
