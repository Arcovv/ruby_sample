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