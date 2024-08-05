# トップレベルの変数はクラスの中からは参照できない
my_var = "成功"

class MyClass
  # my_var をここに表示したい...
  # p = my_var
  # undefined local variable or method `my_var' for class MyClass (NameError)
  
  def my_method
    # ... ここにも my_var を表示したい
    p = my_var
    # undefined local variable or method `my_var' for class MyClass (NameError)
  end
end


obj = MyClass.new
obj.my_method