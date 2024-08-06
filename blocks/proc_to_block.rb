# & を使って Proc オブジェクトを渡すとブロックに変換してから渡される
def my_method(greeting)
  "#{greeting}, #{yield}!"
end

my_proc = proc { "Bill" }
my_method("Hello", &my_proc)
#=> "Hello, Bill!"
