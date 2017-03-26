class MyNewException < Exception
end

begin
  puts "About to raise exception..."
  raise MyNewException
rescue MyNewException => e
  puts "Just raised an exception: #{e}"
end

class InvalidLineError < StandardError
end

def line_from_file(filename, substring)
  fh = File.open(filename)
  line = fh.gets
  raise InvalidLineError unless line.include?(substring)
  return line
rescue InvalidLineError
  puts "Invalid line!"
  raise
ensure
  fh.close
end


module TextHanlder
  class InvalidLineError < StandardError
  end
end
def line_from_file(filename, substring)
  fh = File.open(filename)
  line = fh.gets
  raise TextHanlder::InvalidLineError unless line.include?(substring)
  return line
ensure
  fh.close
end

puts line_from_file("fussy.rb", "def")