# 11.5.1

# zero or one => ?
/Mrs?\.?/
/\d\d?/

# zero or more => *
xml = <<EOM
</poem>
< /poem>
</    poem>
</poem
>
EOM

re = /<\s*\/\s*poem\s*>/
puts "match: #{re.match(xml)}"

# one or more => +
puts /\d+/.match("There's a digit here somewh3re...")
puts "none: #{/\d+/.match("No digits here. Move along.")}"
puts /\d+/.match("Digits-R-Ua 2345")
/(\d+)/.match("Digits-R-Ua 2345")
puts $1

# 11.5.2

puts ""

string = "abc!def!ghi!"
match = /.+!/.match(string)
puts match[0]

match = /.+?!/.match(string)
puts match[0]

puts /\d+5/.match("Digits-R-Ua 2345")
/(\d+)(5)/.match("Digits-R-Ua 2345")
puts "$1: #{$1}, $2: #{$2}"

/\d{3}-\d{4}/
/\d{1,10}/
/\d{3,}/

puts /[A-Z]{5}/.match("David A BLACK")
/([A-Z]){5}/.match("David A BLACK")
puts $1
/([A-Z]{5})/.match("David A BLACK")
puts $1

# 11.5.3

puts ""

regex = /^(\s*#)/
regex.match("   # Pure comments!")
puts $1
regex.match("  x = 1 # Code plus comment!")
puts "none" unless $1

# lookahead assertion
str = "123 456. 789"
m = /\d+(?=\.)/.match(str)
puts m[0]

# lookbehind assertion
re = /(?<=David )BLACK/
re = /(?<!David )BLACK/

str = "abc def ghi"
m = /(abc) (?:def) (ghi)/.match(str)
puts "$1: #{$1}, $2: #{$2}, $3: #{$3}"

# if match
re = /(a)?(?(1)b|c)/
re.match("ab")
puts "$1: #{$1}, $2: #{$2}"
re.match("b")
puts "$1: #{$1}, $2: #{$2}"
re.match("c")
puts "$1: #{$1}, $2: #{$2}"

# modifier
/abc/i

str = "This (including\nwhat's in parens\n) takes up three lines."
m = /\(.*?\)/m.match(str)
p m

/
  \((\d{3})\) # 3 digits inside literal parens (area code)
    \s        # One space character
  (\d{3})     # 3 digits (exchanges)
    -         # Hyphen
  (\d{4})     # 4 digits (second part of number)
/x

/\((\d{3})\)\s(\d{3})-(\d{4})/ # equal this