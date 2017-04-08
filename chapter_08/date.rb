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

puts DateTime.new(2009, 1, 2, 3, 4, 5)
puts DateTime.now
puts DateTime.parse("October 23, 1973, 10:34 AM")

# 8.4.2

dt = DateTime.now
puts dt.year
puts dt.month
puts dt.day
puts dt.hour
puts dt.minute
puts dt.second

t = Time.now
puts t.month
puts t.sec

d = Date.today
puts d.monday?
puts dt.friday?

# 8.4.3

t = Time.now
puts t.strftime("%m-%d-%y")

puts Date.today.rfc2822
puts DateTime.now.httpdate