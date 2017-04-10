# 10.4.1

puts [1, 2, 3, 4].first
puts (1..10).first
a = { 1 => 2, "one" => "two" }.first
p a

class Die
  include Enumerable
  def each
    loop do 
      yield rand(6) + 1
    end
  end
end

d = Die.new
d.each do |roll|
  puts "You rolled a #{roll}."
  if roll == 6
    puts "You win!"
    break
  end
end

# 10.4.2

states = %w{ NJ NY CT MA VT FL }
p states.take(2)
p states.drop(2)

p states.take_while { |s| /N/.match(s) }
p states.drop_while { |s| /N/.match(s) }

# 10.4.3
puts [1, 3, 5, 10].max
puts [1, 2].min
puts ["APL", "Perl", "Ruby"].min
puts %w{ Ruby C Perl Smalltalk }.min { |a, b| a.size <=> b.size }
puts %W{ Ruby APL Perl Smalltalk}.min_by { |lang| lang.size }