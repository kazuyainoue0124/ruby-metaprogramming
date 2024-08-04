def my_method
  x = "Goodbye"
  yield("cruel")
end

x = "Hello"
# x のスコープは my_method のブロックの外側にある
# そのため、my_method のブロック内で x を参照すると、
# my_method のブロックの外側にある x が参照される
p my_method { |y| "#{x}, #{y} world" } # => "Hello, cruel world"