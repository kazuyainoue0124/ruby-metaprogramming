# instance_eval は、レシーバの特異クラスのコンテキストでブロックを実行する
# これにより、特異メソッドを定義することができる　

s1, s2 = "abc", "def"

s1.instance_eval do
  def swoosh!; reverse; end
end

puts s1.swoosh! # cba
puts s2.respond_to?(:swoosh!) # false
