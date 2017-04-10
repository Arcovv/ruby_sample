# 10.9.1

e = Enumerator.new do |y|
  y << 1
  y << 2
  y << 3
end

e = Enumerator.new do |y|
  (1..3).each { |i| y << i }
end

p e

p e.to_a
p e.map { |x| x * 10 }
p e.select { |x| x > 1 }
p e.take(2)

# 10.9.2

names = %w{ David Black Yukihiro Matsumoto }
e = names.enum_for(:select)
p e.each { |n| n.include?('a') }

e = names.enum_for(:inject, "name ")
p e.each { |string, n| string << "#{n}..." }

# 10.9.3

str = "abc"
p str.each_byte