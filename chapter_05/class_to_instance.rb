# 理解這些例子最大的障礙在於理解類就是對象這一事實
class Car
  @@makes = []
  @@cars = {}
  attr_reader :make

  def self.total_count
    @total_count ||= 0
  end

  def self.total_count=(n)
    @total_count = n
  end
  
  def self.add_make(make)
    unless @@makes.include?(make)
      @@makes << make
      @@cars[make] = 0
    end
  end
  
  def initialize(make)
    if @@makes.include?(make)
      puts "Creating a new #{make}!"
      @make = make
      @@cars[make] += 1
      self.class.total_count += 1
    else
      raise "No such make: #{make}"
    end
  end

  def make_mates
    @@cars[make]
  end
  
end

class Hybrid < Car
end

Hybrid.add_make("Honda")
Hybrid.add_make("Ford")
h3 = Hybrid.new("Honda")
f2 = Hybrid.new("Ford")
puts "There are #{Hybrid.total_count} hybrids on the road!"