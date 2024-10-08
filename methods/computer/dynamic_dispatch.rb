# 動的ディスパッチとはコードの実行時に呼び出すメソッドを決定すること
require_relative 'data_source'

class Computer
  def initialize(computer_id, data_source)
    @id = computer_id
    @data_source = data_source
  end

  def mouse
    component :mouse
  end

  def cpu
    component :cpu
  end

  def keyboard
    component :keyboard
  end

  def component(name)
    info = @data_source.send "get_#{name}_info", @id
    price = @data_source.send "get_#{name}_price", @id
    result = "#{name.capitalize}: #{info} ($#{price})"
    return "* #{result}" if price >= 100
  end
end

my_computer = Computer.new(42, DS.new)
puts my_computer.cpu
#=> * Cpu: 2.16 Ghz ($200)
