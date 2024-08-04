# BasicObject　クラスは、Rubyのオブジェクトモデルの基本となるクラスで、
# 他のクラスの基底クラスとして使用されることが多い。
# このクラスは、Objectクラスよりもさらに基本的なクラスで、
# ほとんどのメソッドが削除されている。
# そのため、このクラスを継承して新しいクラスを作成すると、
# そのクラスのインスタンスは、Objectクラスのインスタンスよりもメソッドが少ない。
# BasicObject　のような最小限のメソッドしか持たないクラスのことを ブランクスレート と呼ぶ。
class Computer < BasicObject
  def initialize(computer_id, data_source)
    @id = computer_id
    @data_source = data_source
  end

  def method_missing(name, *args)
    super if !@data_source.respond_to?("get_#{name}_info")
    info = @data_source.send("get_#{name}_info", @id)
    price = @data_source.send("get_#{name}_price", @id)
    result = "#{name.capitalize}: #{info} (#{price})"
    return "* #{result}" if price >= 100
    result
  end
end
