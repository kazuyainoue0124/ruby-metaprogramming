# Paragraph　クラスは文字列をラップしたクラス
# title? メソッド以外は、String クラスのメソッドをそのまま使っている
class Paragraph
  def initialize(text)
    @text = text
  end

  def title?; @text.upcase == @text; end
  def reverse; @text.reverse; end
  def upcase; @text.upcase; end
  # ...
end
