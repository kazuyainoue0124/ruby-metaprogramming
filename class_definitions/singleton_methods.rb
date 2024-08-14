# 特異メソッドの例
# 特異メソッドとは、単一のオブジェクトに特化したメソッド
# Object#define_singleton_method でも定義できる
str = "just a regular string"  # 普通の文字列

# 文字列 str に title? メソッドを追加している
# String クラスの他のオブジェクトに影響はない
def str.title?
  self.upcase == self
end

str.title?                  #=> false
str.methods.grep(/title?/)  #=> [:title?]
str.singleton_methods       #=> [:title?]
