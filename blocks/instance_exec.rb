class C
  def initialize
    @x = 1
  end
end

# instance_eval の使用例
# class D
#   def twisted_method
#     @y = 2
#     # instance_eval を使うとレシーバは self になる
#     # このケースでは @y は C のインスタンス変数だと解釈される
#     # C では @y は初期化されていないので nil と扱われる
#     puts C.new.instance_eval { "@x: #{@x}, @y: #{@y}" }
#   end
# end

# D.new.twisted_method
#=> @x: 1, @y: 

# instance_exec の使用例
class D
  def twisted_method
    @y = 2
    # instance_exec はブロックに引数を渡すことができる
    puts C.new.instance_exec(@y) { |y| "@x: #{@x}, @y: #{y}" }
  end
end

D.new.twisted_method
