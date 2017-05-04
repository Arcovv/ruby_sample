# 14.5

t = Thread.new do
  puts "Starting the thread"
  sleep 1
  puts "At the end of the thread"
end
puts "Outside the thread"
t.join

# 14.5.1

puts "Trying to read in some files..."
t = Thread.new do
  (0..2).each do |n|
    begin
      File.open("part0#{n}") do |f|
        text << f.readlines
      end
    rescue Errno::ENOENT
      puts "Message from thread: Failed on n=#{n}"
      Thread.exit
    end
  end
end
t.join
puts "Finished!"