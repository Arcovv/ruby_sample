n = 1
while n < 11
  puts n
  n = n + 1
end
puts "Done!"

n = 1
begin
  puts n
  n = n + 1
end while n < 11
puts "Done!"

n = 1
until n > 10
  puts n
  n = n + 1
end

n = 1
n = n + 1 until n == 10
puts "We're reached 10!"

a = 1
a += 1 until true

a = 1
begin
  a += 1
end until true