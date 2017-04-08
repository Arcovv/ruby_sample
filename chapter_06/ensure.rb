def line_from_file(filename, substring)
  fh = File.open(filename)
  begin
    line = fh.gets
    raise ArgeumentError unless line.include?(substring)
  rescue ArgeumentError
    puts "Invalid line!"    
    raise
  ensure
    fh.close
  end
  return line
end

puts line_from_file("ensure.rb", "def")