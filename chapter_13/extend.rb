# 13.2.4

module Secretive
  def name
    "[not available]"
  end
end

class Person
  attr_accessor :name
end

david = Person.new
david.name = "David"

matz = Person.new
matz.name = "Matz"

ruby = Person.new
ruby.name = "Ruby"

ruby.extend(Secretive)
david.extend(Secretive)

puts "We`re got one person named #{matz.name}"
puts "One named #{david.name}"
puts "and one named #{ruby.name}"

# extend for class method
class Car
  def self.makes
    %w{ Honda Toyota }
  end
end

# or
class Car 
  class << self
    def makes 
      %w{ Honda Toyota }
    end
  end
end

# or extend
module Makers
  def makes
    %w{ Honda Toyota }
  end
end

class Car
  extend Makers
end

# or
Car.extend(Makers)

module GsubBangModifer
  def gsub!(*args, &block)
    super || self
  end
end

str = "Hello there!"
str.extend(GsubBangModifer)
str.gsub!(/zzz/, "abc").reverse!
puts str