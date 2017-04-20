# 12.3

puts File.size("data.out")
puts FileTest.size("data.out")
puts File::Stat.new("data.out").size

# 12.3.1

puts FileTest.exist?("/usr/local/src/ruby/README")
puts FileTest.directory?("/home/users/dblack/info")
puts FileTest.file?("/home/users/dblack/info")
puts FileTest.symlink?("/home/users/dblack/info")

puts FileTest.readable?("/tmp")
puts FileTest.writable?("/tmp")
puts FileTest.executable?("/home/users/dblack/setup")

puts FileTest.size("data.out")
puts FileTest.zero?("/tmp/tempfile")

# 12.3.2

p File::Stat.new("io.rb")

p File.open("io.rb") { |f| f.stat }