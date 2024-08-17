# refine したメソッドから super を呼び出すと、元のメソッドが呼び出される
module StringRefinements
  refine String do
    def length
      super > 5 ? 'long' : 'short'
    end
  end
end

using StringRefinements

puts "War and Peace".length # => "long"
