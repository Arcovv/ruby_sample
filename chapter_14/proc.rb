# 14.1.1

pr = Proc.new { puts "Inside a Proc's block" }
pr.call

# 14.1.2

def call_a_proc(&block)
  block.call
end

call_a_proc { puts "I am the block...or Proc...or something."}

p = Proc.new { |x| puts x.upcase }
%w{ David Black }.each(&p)

# 14.1.3

def capture_block(&block)
  block.call
end
capture_block { puts "Inside the block" }

p = Proc.new { puts "This proc argument will serve as a code block." }
capture_block(&p)

# to_proc
class Person
  attr_accessor :name
  def self.to_proc
    Proc.new { |person| person.name }
  end
end

d = Person.new
d.name = "David"
m = Person.new
m.name = "Matz"
puts [d, m].map(&Person)

# 14.1.4
# Symbol#to_proc

%w{ david matz }.map(&:capitalize)
%w{ david matz }.map { |str| str.capitalize }
%w{ david matz }.map &:capitalize
%w{ david matz }.map { |str| str.send(:capitalize) }

# 14.1.5

def multiply_by(m)
  Proc.new { |x| puts x * m }
end
mult = multiply_by(10)
mult.call(12)

def make_counter
  n = 0
  return Proc.new { n += 1}
end
c = make_counter
puts c.call # 1
puts c.call # 2
d = make_counter
puts d.call # 1
puts c.call # 3

# 14.1.6

pr = Proc.new { |x| puts "Called with argument #{x}" }
pr.call(10) # Called with argument 10

pr = Proc.new { |x| p x }
pr.call # nil
pr.call(1, 2, 3) # 1