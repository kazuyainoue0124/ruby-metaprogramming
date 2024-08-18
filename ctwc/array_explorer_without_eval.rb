# eval メソッドを使うと、コードインジェクションのリスクがある
def explore_array(method)
  code = "['a', 'b', 'c'].#{method}"
  puts "Evaluating: #{code}"
  eval code
end

# eval を使わずに同じことを実現
def explore_array(method, *arguments)
  ['a', 'b', 'c'].send(method, *arguments)
end
