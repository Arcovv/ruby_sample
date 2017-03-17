puts "Hellp. Please enter a Celsius value: "
celsius = gets.to_i
fahrenheit = (celsius / 9 * 5) + 32
output_name = "temp.out"
puts "Saving result to output file " + "'" + output_name + "'"
fh = File.new(output_name, "w")
fh.puts fahrenheit
fh.close