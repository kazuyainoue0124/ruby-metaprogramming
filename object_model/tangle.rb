module Printable
  def print
    # ...
  end

  def prepare_cover
    # ...
  end
end

module Document
  def print_to_screen
    prepare_cover
    format_for_screen
    # このprintメソッドはPrintableモジュールとDocumentモジュールの両方に定義されている
    # どちらを呼び出しているか？
    print
  end

  def format_for_screen
    # ...
  end

  def print
    # ...
  end
end

# includeしたモジュールはBookクラスの継承チェーンの真上に挿入される
# include Documentの時点ではDocumentモジュールがBookクラスの継承チェーンの真上に挿入される
# その後、include Printableを実行するとPrintableモジュールがBookクラスの継承チェーンの真上に挿入され、
# Documentモジュールは２つ上にずれる
class Book
  include Document
  include Printable
  # ...
end

# Bookクラスのインスタンスを生成し、print_to_screenメソッドを呼び出す
# この時、print_to_screenメソッド内でprintメソッドを呼び出しているが、
# どちらのprintメソッドが呼び出されるか？
b = Book.new
b.print_to_screen

# 以下のようにBookクラスの継承チェーンを確認すると、PrintableモジュールがDocumentモジュールよりも上に挿入されていることがわかる
# そのため、Printableモジュールのprintメソッドが呼び出される
puts Book.ancestors
# Book
# Printable
# Document
# Object
# Kernel
# BasicObject