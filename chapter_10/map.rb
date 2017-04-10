# 10.6

names = %w{ a b c d }

p names.map { |n| n.upcase }
p names.map(&:upcase)
p names.map!(&:upcase)
p names