# ブロック内での変数のスコープがブロックの外に及ばないため、エラーが発生する
class Roulette
  def method_missing(name, *args)
    person = name.to_s.capitalize
    3.times do
      number = rand(10) + 1
      puts "#{number}..."
    end
    "#{person} got a #{number}"
  end
end

number_of = Roulette.new
puts "Bob: "
puts number_of.bob
puts "Frank: "
puts number_of.frank

# 変数numberはブロックの外で定義されているため、ブロック内での参照ができない
# methods/roulette_failure.rb:6:in `puts': stack level too deep (SystemStackError)
#         from methods/roulette_failure.rb:6:in `block in method_missing'