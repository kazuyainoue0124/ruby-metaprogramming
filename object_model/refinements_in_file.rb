# refine を使ってパッチを当てる
# String クラスに to_alphanumeric メソッドを追加する
module StringExtensions
  refine String do
    def to_alphanumeric
      gsub(/[^\w\s]/, '')
    end
  end
end

# refine　を使った場合、そのままでは使えない
puts "My *1st* refinement!".to_alphanumeric
#=> undefined method `to_alphanumeric' for an instance of String (NoMethodError)

# using を使って明示的に有効化するとそれ以降のコードで使える
using StringExtensions
puts "My *1st* refinement!".to_alphanumeric
#=> My 1st refinement