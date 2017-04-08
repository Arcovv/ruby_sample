# 8.2.1

puts "abc".object_id
puts "abc".object_id
puts :abc.object_id
puts :abc.object_id

# 8.2.3

puts "abc".send(:upcase)

# hash
d_hash = { :name => "David", :age => 55 }
# or this
d_hash = { name: "David", age: 55 }
puts d_hash[:age]

d_string_hash = { "name" => "David", "age": 55 }
puts d_string_hash["name"]