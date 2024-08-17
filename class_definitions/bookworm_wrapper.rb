# 以下のメソッドはAmazonへのリクエストに失敗する可能性があるため、
# それを考慮してリトライするようにする
# ただしこのメソッドはライブラリの一部であり、変更することができない
def deserves_a_look?(book)
  amazon = Amazon.new
  amazon.reviews_of(book).size > 20
end

# このメソッドを Amazon クラスに追加することで、
# 例外が発生した場合にリトライするようにする
module AmazonWrapper
  def reviews_of(book)
    start = Time.now
    result = super
    time_taken = Time.now - start
    puts "reviews_of() took more than #{time_taken} seconds" if time_taken > 2
    result
  rescue
    puts "reviews_of() failed"
  end
end

Amazon.class_eval do
  prepend AmazonWrapper
end
