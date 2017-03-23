print "Exit the program? (yes or no): "
answer = gets.chomp

# if implement `===`, you can use `case when`
case answer
when "yes", "y"
  puts "Good-bye!"
  exit
when "no", "n"
  puts "OK, we`ll continue"
else
  puts "That`s unknown answer -- assuming you meant 'no'"
end

puts "Continuing with program..."

print "Exit the program? (yes or no): "
answer = gets.chomp
if answer === "yes" # means "yes".===(answer)
  puts "Good-bye!"
  exit
elsif "no" === answer
  puts "OK, we`ll continue"
else
  puts "That`s unknown answer -- assuming you meant 'no'"
end

puts "Continuing with program..."