class Car
  @@makers = []
  @@cars = {}
  @@total_count = 0
  attr_reader :maker

  def self.add_maker(maker)
    if !@@makers.include?(maker) 
      @@makers << maker
      @@cars[maker] = 0
    else
      puts "#{maker} has been added!"
    end
  end

  def self.total_count
    @@total_count
  end
  
  def initialize(maker)
    if @@makers.include?(maker)
      @maker = maker
      @@cars[maker] += 1
      @@total_count += 1
      puts "Creating a new #{@maker}!"
    else
      raise "No such maker: #{maker}."
    end
  end

  def make_mates 
    @@cars[maker]
  end
  
end

Car.add_maker("Honda")
Car.add_maker("Ford")
h = Car.new("Honda")
f = Car.new("Ford")
h2 = Car.new("Honda")

puts "Counting cars of same make as h2..."
puts "There are #{h2.make_mates}."

puts "Counting total cars..."
puts "There are #{Car.total_count}."

x = Car.new("Brand X") # should error