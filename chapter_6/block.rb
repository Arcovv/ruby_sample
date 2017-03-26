def args_unlesashed(a, b=1, *c, d, e)
  puts "Arguments:"
  p a, b, c, d, e
end

def block_args_unleashed
  yield(1, 2, 3, 4, 5)
end

block_args_unleashed do |a, b=1, *c, d, e|
  puts "Arguments:"
  p a, b, c, d, e
end

def block_local_variable
  x = "Original x!"
  3.times do |i;x|
    x = i
    puts "x in the block is now #{x}"
  end
  puts "x after the block ended is #{x}"
end

block_local_variable