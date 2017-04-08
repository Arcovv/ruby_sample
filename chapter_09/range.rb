# 9.4.1

r = Range.new(1, 100) # 1..100
r = Range.new(1, 100, true) # 1...100
r = 1..100 # In Swift, 1...100
r = 1...100 # In Swift, 1..<100

# 9.4.2

r = 1..10
puts r.begin
puts r.end
puts r.exclude_end? # false

r = "a".."z"
puts r.cover?("a") # true
puts r.cover?("abc") # true
puts r.cover?("A") # false

puts r.include?("a") # true
puts r.include?("abc") # false