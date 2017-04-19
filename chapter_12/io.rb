# 12.1.1

puts "-----12.1.1-----"

puts STDERR.class

STDERR.puts("Problem!")
STDERR.write("Problem!\n")

# 12.1.2

# STDIN.each { |line| p line }

# $/ = "NEXT"
# STDIN.each { |line| p line }

# STDIN.select { |line| line =~ /\A[A-Z]/}

# 12.1.3

# if broken? 
#   STDERR.puts "There's a problem!"
# end

# 12.1.4

line = gets
char = STDIN.getc