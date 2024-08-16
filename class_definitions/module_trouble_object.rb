# この例では、obj の特異クラスに MyModule を include しているので、obj に my_method が追加されている
module MyModule
  def my_method; 'hello'; end
end

obj = Object.new

class << obj
  include MyModule
end

obj.my_method          #=> "hello"
obj.singleton_methods  #=> [:my_method]
