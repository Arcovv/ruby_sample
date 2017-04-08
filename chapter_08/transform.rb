# 8.1.5

string  = "David A. Black"
string.upcase
string.downcase
puts string.swapcase # dAVID a. bLACK

string = "david"
string.capitalize

string  = "David A. Black"
string.rjust(25)
string.ljust(25)

puts "The middle".center(20, "*")

string = "   David A. Black    "
string.strip # "David A. Black"
string.lstrip
string.rstrip

"aaa".chop # "aa"
"aaa\n".chomp # "aaa"
puts "aaa".chomp("a") # "aa"

"clear this string".clear # ""
"replace this string".replace("target") # "target"

"abcde".delete("a") # "bcde"

"crypt".crypt("34")

"a".succ # "b"
"z".succ # "a"