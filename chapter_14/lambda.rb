# 14.2

lam = lambda { puts "A lambda!"} # A Proc class
puts lam.class.to_s == "Proc"
lam.call

def return_test
  l = lambda { return }
  l.call
  puts "Still here"
  p = Proc.new { return }
  p.call
  puts "You will not see this message"
end

return_test

lam = lambda { |x| p x }
lam.call 1
# lam.call 1, 2, 3 # Error

lam = -> { puts "stabby lambda" }
lam.call

mult = ->(x, y) { x * y }
puts mult.call(1, 2)