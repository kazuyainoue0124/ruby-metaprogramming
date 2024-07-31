# method_missingはオーバーライドも可能
# method_missingは引数として呼び出されたメソッド名、引数、ブロックを受け取る
class Lawyer
  def method_missing(method, *args)
    puts "呼び出した: #{method}(#{args.join(', ')})"
    puts "(ブロックも渡した)" if block_given?
  end
end

bob = Lawyer.new
bob.talk_simple('a', 'b') do
  # ブロック
end
#=> 呼び出した: talk_simple(a, b)
#=> (ブロックも渡した)