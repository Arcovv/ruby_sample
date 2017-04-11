# 10.12

# result = (1..Float::INFINITY).select { |n| n % 3 == 0 }.first(10)
# p result

enum = (1..Float::INFINITY).lazy.select { |n| n % 3 == 0 }
p enum
p enum.first(10)

# FizzBuzz

def fb_calc(i)
  case 0
  when i % 15
    "FizzBizz"
  when i % 5
    "Bizz"
  when i % 3
    "Fizz"
  else
    i.to_s
  end
end

def fb(n)
  (1..Float::INFINITY).lazy.map { |i| fb_calc(i) }.first(n)
end

p fb(15)