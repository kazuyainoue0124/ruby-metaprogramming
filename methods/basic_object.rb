# BasicObjectクラスで定義されているメソッドを確認
im = BasicObject.instance_methods
p im
#=> [:equal?, :!, :__send__, :==, :!=, :instance_eval, :instance_exec, :__id__]