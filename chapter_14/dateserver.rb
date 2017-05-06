# 14.5.2

require 'socket'

s = TCPServer.new(3939)
conn = s.accept
conn.puts "Hi. Here is the date."
conn.puts `date`
conn.close
s.close

s = TCPServer.new(3939)
while true
  conn = s.accept
  conn.puts "Hi. Here is the date."
  conn.puts `date`
  conn.close
end

s = TCPServer.new(3939)
while true
  conn = s.accept
  conn.print "Hi. What is your name? "
  name = conn.gets.chomp
  conn.puts "Hi, #{name}. Here is the date."
  conn.puts `date`
  conn.close
end

s = TCPServer.new(3939)
while conn = s.accept
  Thread.new(conn) do |c|
    c.print "Hi. What is your name? "
    name = c.gets.chomp
    c.puts "Hi, #{name}. Here is the date."
    c.puts `date`
    c.close
  end
end