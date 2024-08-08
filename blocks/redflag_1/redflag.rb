def event(description)
  puts "ALERT: #{description}" if yield
end

load 'blocks/redflag_1/events.rb'
#=> ALERT: 常に発生するイベント
