# 14.6.2

d = open("|cat", "w+")
d.puts "Hello to cat"
d.gets
d.close

d = open("|cat", "w+") { |p| p.puts("hi"); p.gets }
p d

# open3.popen3

require 'open3'

stdin, stdout, stderr = Open3.popen3("cat")
stdin.puts("Hi.\nBye")
p stdout.gets # "Hi.\n"
p stdout.gets # "Bye\n"