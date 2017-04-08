obj = Object.new

puts "The id of obj is #{obj.object_id}."

str = "Strings are objects too, and this is a string!"

puts "The id of the string object str is #{str.object_id}."
puts "And the id of the integer 100 is #{100.object_id}."

a = "Hello"
b = a
c = (a.object_id == b.object_id)
puts "The id of a: #{a.object_id}, and the id of b: #{b.object_id}. Result: #{c}"

c = "Hello"
d = "Hello"
e = (c.object_id == d.object_id)
puts "The id of c: #{c.object_id}, and the id of d: #{d.object_id}. Result: #{e}"

if obj.respond_to?("talk")
	obj.talk
else
	puts "obj is not response to 'talk'."
end