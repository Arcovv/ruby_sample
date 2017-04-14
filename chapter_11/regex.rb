# 11.2.2

p //.class

puts "Match!" if /abc/.match("the alphabet starts with abc.")
puts "Match!" if "The alphabet starts with abc.".match(/abc/)

puts "Match!" if /abc/ =~ "the alphabet starts with abc."
puts "Match!" if "The alphabet starts with abc." =~ /abc/

start_index = /abc/ =~ "the alphabet starts with abc."
match_data = /abc/.match("the alphabet starts with abc.")

puts "start_index: #{start_index}"
p "match_data: #{match_data}"

# 11.3.2

puts "Match!" if /.ejected/ =~ "%ejected"

# 11.3.3

puts "Match!" if /[dr].jected/ =~ "dejected"

# /[a-z]/
# /[a-fA-F0-9]/

string = "ABC3934 is a hex number"
start_index = string =~ /[^a-fA-F0-9]/
puts "start_index: #{start_index}"

# /[0-9]/ <-> /\d/
# \w \W \s \S \d \D