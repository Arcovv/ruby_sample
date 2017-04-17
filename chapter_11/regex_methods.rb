# 11.7

array = %w{ abc cbd and dff1 diqbfpa }
p array.find_all { |e| e.size > 3 and /\d/.match(e) }

# 11.7.1

p "testing 1 2 3 testing 4 5 6".scan(/\d/)

str = "Leopold Auer was the teacher of Jascha Heifetz."
violinests = str.scan(/([A-Z]\w+)\s+([A-Z]\w+)/)
violinests.each do |fname, lname|
  puts "#{lname}'s first name was #{fname}.'"
end

# 11.7.2

p "Ruby".split(//)

line = "first_name=david;last_name=black;country=usa"
record = line.split(/=|;/)
p record

data = []
record = Hash[*line.split(/=|;/)]
data.push(record)
p data

p "a, b, c, d, e".split(/,\s/, 3)