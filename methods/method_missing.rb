# 継承チェーンをたどりメソッド探索をしても見つからない場合、
# method_missingメソッドが呼び出される
# method_missingメソッドはすべてのオブジェクトの祖先のBasicObjectクラスに定義されている
class Lawyer; end

nick = Lawyer.new
puts nick.talk_simple
#=> undefined method `talk_simple' for an instance of Lawyer (NoMethodError)
