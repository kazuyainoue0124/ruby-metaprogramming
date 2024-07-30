# Refinementsはモンキーパッチとは異なり、有効範囲を限定できる
module StringExtensions
  refine String do
    def reverse
      "esrever"
    end
  end
end

module StringStuff
  # usingを呼び出した場所からモジュールの終わりまでが有効範囲
  using StringExtensions
  puts "my_string".reverse
  #=> esrever
end

puts "my_string".reverse
#=> gnirts_ym
