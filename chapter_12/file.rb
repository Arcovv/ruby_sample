# 12.2.1

f = File.new("code/ticket2.rb")

# read all contents
f.read

# 12.2.2

# gets one line
f.gets

# gets next line
f.gets

# move to start
f.rewind

# ["...", "..."] string array of content
f.readlines

f.each { |line| puts "Next line: #{line}" }

# 12.2.3

# "c"
f.getc

f.ungetc("X")

# "XClass Ticket\n"
f.gets

# nil
f.getc

# EOFError
f.readchar

# nil
f.getbyte

# EOFError
f.readbyte

# 12.2.4

# 0
f.rewind

# 0
f.pos

# "class Ticket\n"
f.gets

# 13
f.pos

# 10
f.pos = 10

# "et\n"
f.gets

# reference move to 20th
f.seek(20, IO::SEEK_SET)

# reference move add 15
f.seek(15, IO::SEEK_CUR)

# reference move to end before 10
f.seek(-10, IO::SEEK_END)

# f.seek(20) == f.pos = 20

# 12.2.5

full_text = File.read("myfile.txt")
lines_of_text = File.readlines("myfile.txt")