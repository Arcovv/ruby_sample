# 15.3

x = 1
p local_variables
p global_variables

class Person
  attr_accessor :name, :age
  def initialize(name)
    @name = name
  end
end

p = Person.new("David")
p.age = 55
p p.instance_variables