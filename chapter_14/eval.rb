# 14.4.1

puts eval("2 + 2")

print "Method name: "
m = gets.chomp
eval("def #{m}; puts 'Hi!'; end")
eval(m)

def use_a_binding(b)
  eval("puts str", b)
end
str = "I am a string in top-level binding!"
use_a_binding(binding)

# 14.4.3

puts "-----14.4.3-----"

p self
a = []
a.instance_eval { p self }

class C
  def initialize
    @x = 1
  end
end

c = C.new
c.instance_eval { puts @x }

string = "A sample string"
p string.instance_exec("s") { |delim| self.split(delim) }

class Person
  def initialize(&block)
    instance_eval(&block)
  end
  
  def name(name=nil)
    @name ||= name
  end
  
  def age(age=nil)
    @age ||= age
  end
end

david = Person.new do 
  name "David"
  age 55
end

# 14.4.4

puts "-----14.4.4-----"

c = Class.new

c.class_eval do 
  def some_method
    puts "Created in class_level"
  end
end

c_instance = c.new
c_instance.some_method

# >> var = "initialized variable"
# => "initialized variable"
# >> class C
# >> puts var
# >> end
# NameError: undefined local variable or method `var' for C:Class
# Did you mean?  var
# >>
# >> C.class_eval { puts var }
# initialized variable
# => nil