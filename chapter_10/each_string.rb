# 10.7

str = "abcde"
str.each_byte { |b| p b }
str.each_char { |c| p c }

str = "100\u20ac"
puts "\neach_codepoint:"
str.each_codepoint { |cp| p cp }

puts "\neach_byte:"
str.each_byte { |b| p b }

str = "This string\nhas three\nlines"
str.each_line { |l| puts "Next line: #{l}"}

p "Hello".bytes