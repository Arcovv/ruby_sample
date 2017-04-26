# 13.1

# Instance of C
class C
  def talk
    puts "Hi!"
  end
end

c = C.new
c.talk # Hi!

# 13.1.2

# Instance of Object
obj = Object.new
def obj.talk
  puts "Hi!"
end
obj.talk # Hi!

# Class methods
class Car
  def self.makes
    %w{ Honda Ford Toyota Chevrolet Volvo }
  end
end

class A
  def instance_method
    puts "A instance."
  end
  
  def self.class_method
    puts "A class method"
  end
end

a = A.new
a.instance_method
A.class_method

# Singleton
str = "I'm a string"
class << str
  def twice
    self + " " + self
  end
end
puts str.twice

# define class methods
class Ticket
  class << self
    def most_expensive(*tickets)
      tickets.max_by(&:price)
    end
  end
end
