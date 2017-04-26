# 13.1.3

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

def david.name
  "[not available]"
end

class << ruby
  include Secretive
end

puts "We`re got one person named #{matz.name}"
puts "One named #{david.name}"
puts "and one named #{ruby.name}"


class C
  def talk 
    puts "Hi from original class!"
  end
end

module M
  def talk
    puts "Hello from module!"
  end
end

c = C.new
c.talk

class << c
  include M
  p ancestors
end

c.talk