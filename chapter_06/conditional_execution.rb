x = 20

if x > 10 then puts "x is #{x}." end

if x > 10 ; puts "x is #{x}." end

if x < 10
  puts "x is #{x}, x < 10"
elsif x > 10
  puts "x is #{x}, x > 10"
elsif x = 10
  puts "x is #{x}, x == 10"
end
  

if not x == 1
  puts "x is not 1"
end

if x != 1
  puts "x is not 1"
end

if !(x == 1)
  puts "x is not 1"
end

unless x == 20
  puts "x == 20 wouldn`t do this"
end

i_love_you = true

unless i_love_you
  puts "I don`t love you."
else
  puts "I love you."
end


puts "x is 20" if x == 20

def try_this(x)
  if x < 0
    puts "negative"
  elsif x > 0
    puts "positive"
  else
    puts "zero"
  end
end

try_this(1)