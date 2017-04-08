# 7.4.4

class Person
  def initialize(name, age, email)
    @name = name
    @age = age
    @email = email
  end

  def to_ary
    [@name, @age, @email]
  end
end

p = Person.new("David", 10, "@gmail.com")
q = Person.new("hello", 20, "@apple.com")
a = []

a.concat(p)
p a

a.concat(q)
p a