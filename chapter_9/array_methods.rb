# 9.2.2

def line_feed
  puts ""
end

a = []
a[0] = "first"
p a

a = []
a.[]=(0, "first")
p a

a = [1, 2, 3, 4, 5]
puts a[2]
puts a.[](2)
p a.slice(0, 2)
p a.values_at(0, 2)
p a.unshift(0)
p a.push(6)
p a << 7
p a.push(8, 9, 10)

line_feed

a = [1, 2, 3, 4, 5]
print "The original array: "
p a
popped = a.pop
print "The poped item: "
puts popped
print "The new state of the array: "
p a
shifted = a.shift
print "The shifted item: "
puts shifted
print "The new state of the array: "
p a

line_feed

a = %w{ one two three four five }
p a
poppeds = a.pop(2)
puts "poppeds: #{poppeds}"
puts "a: #{a}"
shifteds = a.shift(2)
puts "shifteds: #{shifteds}"
puts "a: #{a}"

line_feed

# 9.2.3

a = [1, 2, 3]
b = [4, 5, 6]
puts "concat: #{a.concat(b)}"
p a
p b
a.pop(3)
puts "+: #{a + b}"
p a
p b

line_feed

a = [1, 2, 3]
a.replace([4, 5, 6])
puts "replaced: #{a}"

line_feed

a = [1, 2, 3]
b = a
a.replace([4, 5, 6])
puts "a: #{a}"
puts "b: #{b}"
a = [7, 8, 9]
puts "a: #{a}"
puts "b: #{b}"

line_feed

# 9.2.4

array = [1, 2, [3, 4], [5], [6, [7, 8]]]
puts "flatten: #{array.flatten}"
puts "original: #{array}"
puts "flatten 1: #{array.flatten(1)}"
puts "flatten 2: #{array.flatten(2)}"
puts "reverse: #{[1, 2, 3, 4].reverse}"
puts "join: #{["Hello ", "Ruby"].join}"
puts "join: #{["Hello", "Ruby"].join(", ")}"

a = %w{ one two three }
puts "*: #{a * "-"}" 
puts "uniq: #{[1, 5, 1, 6, 2, 5, 1, 2].uniq}"

zip_codes = ["000", "111", "222", nil, "333", "555"]
puts "compact: #{zip_codes.compact}"
