# 12.5.2

require 'pathname'

path = Pathname.new("/Users/dblack/hacking/test1.rb")

puts path.basename # test1.rb
puts path.dirname # /Users/dblack/hacking
puts path.extname # .rb

path.ascend do |dir| 
  puts "Next level up: #{dir}"
end
# Next level up: /Users/dblack/hacking/test1.rb
# Next level up: /Users/dblack/hacking
# Next level up: /Users/dblack
# Next level up: /Users
# Next level up: /

path.ascend do |dir| 
  puts "Ascended to #{dir}"
end
# Ascended to: test1.rb
# Ascended to: hacking
# Ascended to: dblack
# Ascended to: Users
# Ascended to: /