# alias_method による別名でのメソッドの再定義は、元のメソッドを変更するわけではない。
class String
  alias_method :real_length, :length

  def length
    real_length > 5 ? 'long' : 'short'
  end
end

puts "War and Peace".length # => "long"
puts "War and Peace".real_length # => 13