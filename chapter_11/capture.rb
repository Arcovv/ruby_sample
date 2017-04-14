# 11.4.1

text = "Peel,Emma,Mrs.,talented amateur"

puts /[A-Za-z]+,[A-Za-z]+,Mrs?\./.match(text)

/([A-Za-z]+),[A-Za-z]+,(Mrs?\.)/.match(text)

puts "Dear #{$2} #{$1}"

# 11.4.2

string = "My phone number is (123) 555-1234."
phone_re = /\((\d{3})\)\s+(\d{3})-(\d{4})/
m = phone_re.match(string)

puts ""
puts "pre_match: #{m.pre_match}"
puts "post_match: #{m.post_match}"
puts "begin(2): #{m.begin(2)}"
puts "end(3): #{m.end(3)}"
puts ""

unless m
  puts "There was no match-sorry."
  exit
end

print "The whole string we started with: "
puts m[0]

puts "The three captures: "

m.captures.count.times do |index|
  puts "Capture ##{index + 1}: #{m.captures[index]}"
end

puts "Here's another way to get at the first capture:"
print "Capture #1: "
puts m[1]

# 11.4.3

re = /(?<first>\w+)\s((?<middle>\w\.)\s+)?(?<last>\w+)/
m = re.match("David Black")
puts m[:first]