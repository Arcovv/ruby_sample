# 11.7

puts "\n-----11.7-----"

array = %w{ abc cbd and dff1 diqbfpa }
p array.find_all { |e| e.size > 3 and /\d/.match(e) }

# 11.7.1

puts "\n-----11.7.1-----"

p "testing 1 2 3 testing 4 5 6".scan(/\d/)

str = "Leopold Auer was the teacher of Jascha Heifetz."
violinests = str.scan(/([A-Z]\w+)\s+([A-Z]\w+)/)
violinests.each do |fname, lname|
  puts "#{lname}'s first name was #{fname}.'"
end

# 11.7.2

puts "\n-----11.7.2-----"

p "Ruby".split(//)

line = "first_name=david;last_name=black;country=usa"
record = line.split(/=|;/)
p record

data = []
record = Hash[*line.split(/=|;/)]
data.push(record)
p data

p "a, b, c, d, e".split(/,\s/, 3)

# 11.7.3

puts "\n-----11.7.3-----"

puts "typigraphical error".sub(/i/, "o")
result = "capitalize the first vowel".sub(/[aeiou]/) { |s| s.upcase }
puts result

puts "capitalize every word".gsub(/\b\w/) { |s| s.upcase }

puts "aDvid".sub(/([a-z])([A-Z])/, '\2\1')

puts "double every word".gsub(/\b(\w+)/, '\1 \1')

# 11.7.4

puts "\n-----11.7.4-----"

re = /abc/
str = "abc"
puts "Match 1!" if re.match(str)
puts "Match 2!" if str =~ re
puts "Match 3!" if re === str

print "Continue? (y/n) "
answer = gets
case answer
when /^y/i
  puts "Great!"
when /^n/i
  puts "Bye!"
  exit
else
  puts "Huh?"
end

countries = ["USA", "UK", "France", "Germany"]
p countries.grep(/[a-z]/)
p countries.select { |c| /[a-z]/ === c }

array = [1, 2, 3]
p array.grep(/1/)
p array.map { |i| i.to_s }.grep(/1/)