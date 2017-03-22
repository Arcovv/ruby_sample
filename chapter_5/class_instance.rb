class Car 
  # 1
  @@makes = []
  @@cars = {}
  @@total_count = 0
  # 2
  attr_reader :make

  def self.total_count # 3
    @@total_count
  end

  def self.add_make(make) # 4
    @@makes << make
    @@cars[make] = 0
  end
  
  def initialize(make)
    if @@makes.include?(make)
      puts "Creating a new #{make}!"
      @make = make # 5
      @@cars[make] += 1 # 6
      @@total_count += 1 
    else
      raise "No such make: #{make}." # 7
    end
  end
  
  def make_mates # 8
    @@cars[make]
  end
  
end


Car.add_make("Honda")
Car.add_make("Ford")
h = Car.new("Honda")
f = Car.new("Ford")
h2 = Car.new("Honda")

puts "Counting cars of same make as h2..."
puts "There are #{h2.make_mates}."

puts "Counting total cars..."
puts "There are #{Car.total_count}."

x = Car.new("Brand X") # should error