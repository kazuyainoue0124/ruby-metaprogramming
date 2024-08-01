# method_missing を使って、重複コードを削減する
class Computer
  def initialize(computer_id, data_source)
    @id = computer_id
    @data_source = data_source
  end

  def method_missing(name)
    super if !@data_source.respond_to?("get_#{name}_info")

    info = @data_source.send("get_#{name}_info", @id)
    price = @data_source.send("get_#{name}_price", @id)
    result = "#{name.capitalize}: #{info} ($#{price})"
    return "* #{result}" if price >= 100
    result
  end

  # 現状だと以下のコードがfalseを返してしまう
  # cmp = Computer.new(0, DS.new)
  # cmp.respond_to?(:mouse) #=> false
  # そのため、以下のコードを追加する
  # method_missingを使っている場合は、respond_to_missing?メソッドもオーバーライドする必要がある
  def respond_to_missing?(method, include_private = false)
    @data_source.respond_to?("get_#{method}_info") || super
  end
end

my_computer = Computer.new(42, DS.new)
puts my_computer.cpu
#=> * Cpu: 2.16 Ghz ($200)