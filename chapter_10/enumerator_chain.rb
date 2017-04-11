# 10.11

names = %w{ David A Black }
result = names
  .select { |n| n[0] < 'M' }
  .map(&:upcase)
  .join(", ")

puts result

# 10.11.1

names = %w{ David Black Yukihiro Matsumoto }
result = names.each_slice(2).map do |first, second|
  "First name: #{first}, last name: #{second}"
end
p result

# 10.11.2

p ('a'..'z').map.with_index { |letter, i| [letter, i] }