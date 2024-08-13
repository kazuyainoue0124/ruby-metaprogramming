# この Loan クラスは Time クラスに依存しているためテストが難しい
# class Loan
#   def initialize(book)
#     @book = book
#     @time = Time.now
#   end

#   def to_s
#     "#{@book.upcase} loaned on #{@time}"
#   end
# end

# テスト実行時のみ @time_class を使うように変更
# これにより、FakeTime クラスを使ってテストを行うことができる
class Loan
  def initialize(book)
    @book = book
    @time = Loan.time_class.now
  end

  def self.time_class
    @time_class || Time
  end

  def to_s
    "#{@book.upcase} loaned on #{@time}"
  end
end

class FakeTime
  def self.now; 'Mon Apr 06 12:15:50'; end
end

require 'test/unit'

class TestLoan < Test::Unit::TestCase
  def test_conversion_to_string
    # テストのために、 Loan クラスの @time_class にモッククラスを設定
    Loan.instance_eval { @time_class = FakeTime }
    loan = Loan.new('War and Peace')
    assert_equal 'WAR AND PEACE loaned on Mon Apr 06 12:15:50', loan.to_s
  end
end
