def say_goodbye
  x = "Goodbye"
  puts x
end

def start_here
  x = "Hello"
  puts x
  say_goodbye
  puts "Let's check whether x remained the same:"
  puts x
end

# start_here

# reference value
def test_1
  str = "Hello"
  abc = str
  str.replace("Goodbye")
  puts str
  puts abc
end

# immediate value
def test_2
  a = 100
  b = a
  a = 200
  puts a
  puts b
end

# immediate value
def test_3
	a = 100.0
	b = a
	a = 200.0
	puts a
	puts b
end

# test_3
# test_2

def change_string(str)
	str.replace("New string")
end

s = "Hello"
s.freeze
change_string(s)
puts s