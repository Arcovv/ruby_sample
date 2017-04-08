# self -> main
puts "Top Level"
puts "self is #{self}"

# self -> class C instance
class C
  puts "Class definition block:"
  puts "self is #{self}"

  def self.x # self.x 等價于 C.x
    puts "Class method C.x:"
    puts "self is #{self}"
  end

  def C.do
    puts "C do"
  end  
  
  def m
    puts "Instance method C#m:"
    puts "self is #{self}"
  end
end

c = C.new
c.m
C.x
C.do

class D < C
end

D.x