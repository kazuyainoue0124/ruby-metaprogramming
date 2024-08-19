require 'erb'

erb = ERB.new(File.read('ctwc/template.rhtml'))
erb.run
#=> <p><strong>Wake up!</strong> It's a nice sunny Tuesday.</p>
