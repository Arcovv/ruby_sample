# 12.2.6

f = File.new("data.out", "w")
f.puts "David A. Black, Rubyist"
f.close

f = File.new("data.out", "a")
f.puts "Yukihiro Matsumoto, Ruby creator"
f.close

puts File.read("data.out")

# 12.2.7

File.open("records.txt") do |f|
  while record = f.gets
    name, nationality, instrument, dates = record.chomp.split('|')
    puts "#{name} (#{dates}), who was #{nationality}, played #{instrument}"
  end
end

# 12.2.8

puts "-----12.2.8-----"

File.open("records.txt") do |f|
  f.each do |record|
    name, nationality, instrument, dates = record.chomp.split('|')
    puts "#{name} (#{dates}), who was #{nationality}, played #{instrument}"
  end
end
