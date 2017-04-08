# 8.1.1

puts "Two plus two is #{2 + 2}."
puts 'Two plus two is #{2 + 2}.'
puts "Escaped interpolation: \"\#{2 + 2}\"."

# 1
puts %q{You needn't escape apostrophes when using %q.}

puts %q-A string-
puts %Q/Another string/
puts %{Yet another string}

# 2 here
text = <<EOM
This is the first line of text.
This is the second line.
Now we are done.
EOM

puts text

a = <<EOM.to_i * 10
5
EOM
puts a