# 7.4.1

class Person
  def initialize(name)
    @name = name
  end
  
  def inspect 
    @name
  end
end

p = Person.new("Peter")
puts p.inspect