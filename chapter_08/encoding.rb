# 8.1.7

puts __ENCODING__

puts "string".encoding
puts "string".encode("US-ASCII").encoding

str = "Test string"
str.encode!("US-ASCII")
puts str.encoding
puts str << ". Euro symbol: \u20AC"
puts str.encoding