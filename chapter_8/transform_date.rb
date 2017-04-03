# 8.4.4

require 'time'
require 'date'

t = Time.now
puts t - 20
puts t + 20

dt = DateTime.now
puts dt - 100 # on day
puts dt >> 3 # on month
puts dt << 10

d = Date.today
puts d.next
puts d.next_year
puts d.next_month(3)
puts d.next_day(1)

next_week = d + 7
d.upto(next_week) { |date|
  puts "#{date} is a #{date.strftime("%A")}"
}