# 15.1.1

class Cookbook
  attr_accessor :title, :author
  
  def initialize
    @recipes = []
  end
  
  def method_missing(m, *args, &block)
    @recipes.send(m, *args, &block)
  end  
end

cb = Cookbook.new
cb << recipe_for_cake
cb << recipe_for_chicken
beef_dishes = cb.select { |recipe| recipe.main_ingredient == "beef" }



class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name, @age = name, age
  end
  
  def method_missing(m, *args, &block)
    if /set_(.*)/.match(m)
      self.send("#{$1}=", *args)
    else
      super
    end
  end
end

person = Person.new("David", 54)
person.set_age(55)
p person.age
p person.respond_to?(:set_age)