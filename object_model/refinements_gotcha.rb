class MyClass
  def my_method
    "original my_method"
  end

  def another_method
    my_method
  end
end

module MyClassRefinements
  refine MyClass do
    def my_method
      "refined my_method"
    end
  end
end

using MyClassRefinements
puts MyClass.new.my_method
#=> refined my_method

# この時点で refine が有効だが、another_method は refine の影響を受けない
puts MyClass.new.another_method
#=> original my_method