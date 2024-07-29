# Kernelモジュールに定義されたメソッドは、どこからでも呼び出すことができる
require "awesome_print"

local_time = { city: "Rome", now: Time.now }
ap local_time, :indent => 2
# 出力結果
# {
#   :city => "Rome",
#    :now => 2024-07-30 08:50:26.472736 +0900
# }

# apメソッドはawesome_printでカーネルメソッドとして提供されている
# https://github.com/awesome-print/awesome_print/blob/master/lib/awesome_print/core_ext/kernel.rb
# module Kernel

#   def ai(options = {})
#     ap = AwesomePrint::Inspector.new(options)
#     awesome = ap.awesome self
#     if options[:html]
#       awesome = "<pre>#{awesome}</pre>"
#       awesome = awesome.html_safe if defined? ActiveSupport
#     end
#     awesome
#   end
#   alias :awesome_inspect :ai

#   def ap(object, options = {})
#     puts object.ai(options)
#     object unless AwesomePrint.console?
#   end
#   alias :awesome_print :ap

#   module_function :ap
# end