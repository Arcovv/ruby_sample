class Dog
  attr_reader :age, :dog_years

  def dog_years=(years)
    @years = years
  end
  
  def age=(years)
    @age = years
    self.dog_years = years * 7
  end
  
  private :dog_years=
end

dog = Dog.new
dog.age = 10
puts "Rover is #{dog.dog_years} in dog years."