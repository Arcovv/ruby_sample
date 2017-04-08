# 10.3.1

puts [1, 2, 3, 5, 6, 7, 9].find { |n| n > 5 }

failure = lambda { 11 }
over_ten = [1, 2, 3, 4, 5, 6].find(failure) { |n| n > 10 }
puts over_ten

# 10.3.2

a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p a.find_all { |item| item > 5 }
p a.select { |item| item > 100 }
p a.reject { |item| item > 5 }

# 10.3.3

colors = %w{ red orange yellow green blue indigo vinlet }
p colors.grep(/o/)

miscellany = [75, "hello", 10...20, "goodbye"]
p miscellany.grep(String)
p miscellany.grep(50..100)

p colors.grep(/o/) { |color| color.capitalize }

# enumerable.grep(expression) { |item| ... }
# enumerable.select { |item| expression === item }.map { |item| ... }

# 10.3.4

p colors.group_by { |color| color.size }

class Persion
  attr_accessor :age
  
  def initialize(options)
    self.age = options[:age]
  end
  
  def teenager?
    (13..19) === age
  end
end

peoples = 10.step(25, 3).map { |i| Persion.new(:age => i)}
p peoples
teens = peoples.partition { |person| person.teenager? }
p teens
puts "#{teens[0].size} teens; #{teens[1].size} non-teens"