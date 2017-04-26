# 13.2.1

p "abc".match(/X/)

# Regexp#match
class Regexp
  alias __old_match__ match
  def match(string)
    __old_match__(string) || []
  end
end

p "abc".match(/X/)

# String#gsub!
string = "Hello there"
string.gsub!(/e/, "E") # "HEllo thErE"
string  # "HEllo thErE"

string.gsub!(/zzz/, "xxx") # nil
string  # "Hello there"

string.gsub!(/zzz/, "xxx").reverse! # NoMethodError

class String
  alias __old_gsub_bang__ gsub!
  def gsub!(*args, &block)
    __old_gsub_bang__(*args, &block)
    self
  end
end

