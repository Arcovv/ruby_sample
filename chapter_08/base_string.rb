# 8.1.2

string = "Ruby is a cool language."
puts string[5] # "i"
puts string[-12] # "o"
puts string[5, 10] # "is a cool "
puts string[7..14] # " a cool "
puts string[-12..-3] # "ol langua"
puts string[15..-1] # "language."
puts string["cool lang"] # "cool lang"
puts string["very cool lang"] # nil
puts string[/c[ol ]+/] # "cool l"
puts string.slice!("cool ") # "cool "
puts string # "Ruby is a language."

string = "Ruby is a cool language."
string["cool"] = "great"
puts string # "Ruby is a great language."
string[-1] = "!"
puts string # "Ruby is a great language!"

str = "Hi "
str + "there."
puts str # "Hi "
str << "there."
puts str # "Hi there."

str = "Hi "
"#{str}there."
puts "#{2+2}" # "4"