class Person
  def initialize(name)
    @name = name
  end

  def to_str
    @name
  end
end

p = Person.new("David")
puts "A " + p + " SS"