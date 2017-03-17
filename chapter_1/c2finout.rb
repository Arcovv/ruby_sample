puts "Try to read data from 'temp.dat' file and write to other file..."

num = File.read("temp.dat").to_i
puts "Get the num from file which is " + num.to_s
puts "Write data to 'temp1.out' file"

fh = File.new("temp1.out", "w")
fh.puts ((num * 9 / 5) + 32)
fh.close

puts "Write to file successfully!"
puts "Check data..."

new_num = File.read("temp1.out").to_i
puts "Result is: " + new_num.to_s