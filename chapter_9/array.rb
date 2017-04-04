# 9.2

# 1
a = Array.new
a = Array.new(3)
p a

n = 0
a = Array.new(3) {
  n += 1
  n * 10
}
p a

# 2
a = []
a = [1, 2, "three", 4, []]

# 3
string = "A string"
puts string.respond_to?(:to_ary)
puts string.respond_to?(:to_a)
p Array(string)

def string.to_a
  split(//)
end

p Array(string)

# 4
p %w{ David A. Black }
p %w{ David\ A.\ Black is a Rubyist. }
p %W{ David is #{2014 - 1959} years old. }

# 5
p %i{ a b c }
d = "David"
p %I{ "#{d}" }

# try_convert
obj = Object.new
p Array.try_convert(obj)
def obj.to_ary
  [1, 2, 3]
end
p Array.try_convert(obj)
def obj.to_ary
  "String"
end
p Array.try_convert(obj)