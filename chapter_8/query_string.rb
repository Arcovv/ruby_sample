# 8.1.3

str = "Ruby is a cool language."

puts str.include?("cool") # true
puts str.include?("Swift") # false
puts str.start_with?("Ruby") # true
puts str.end_with?("!!!") # false
puts "".empty? # true
puts " ".empty? # false

puts str.length # 24
puts str.size # 24

puts str.count("a") # 3
puts str.count("g-m") # 5
puts str.count("aey. ") # 10
puts str.count("^aey. ") # 14
puts str.count("^g-m") # 19
puts str.count("ag-m") # 8
puts str.count("ag-m", "^l") # 6

puts str.index("cool") # 10
puts str.index("l") # 13
puts str.rindex("l") # 15

puts "a".ord # 97
puts 97.chr # "a"