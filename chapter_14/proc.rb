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