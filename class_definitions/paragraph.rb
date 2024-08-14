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

# Paragraph#title?　はアプリケーション全体で１回だけ呼び出されている
def index(paragraph)
  add_to_index(paragraph) if paragraph.title?
end

# どんな文字列も段落になる
paragraph = "any string can be a paragraph"

def paragraph.title?
  self.upcase == self
end

index(paragraph)