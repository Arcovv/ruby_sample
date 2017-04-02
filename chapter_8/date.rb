# 8.4

require 'date'
result = Date.parse("April 24 1705").england.strftime("%B %d %Y")
puts result

require 'time'

# 8.4.1

puts Date.today.to_s
puts Date.new(1959,2,1)
puts Date.parse("2018/01/11")

# Time
puts Time.now
puts Time.at(100000000)
puts Time.mktime(2017,10,3,14,3,6)
puts Time.parse("March 22, 1985, 10:35 PM")