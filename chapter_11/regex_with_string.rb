# 11.6.1

str = "def"
p /abc#{str}/

Regexp.escape("a.c")
Regexp.escape("^abc")

str = "a.c"
re = /#{Regexp.escape(str)}/
p re.match("a.c")
p re.match("abc")

# 11.6.2

puts "11.6.2"

puts /abc/
puts /abc/.inspect