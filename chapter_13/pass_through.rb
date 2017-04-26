# 13.2.3

class String
  alias __old_reverse__ reverse
  def reverse
    $stderr.puts "Reversing a string!"
    __old_reverse__
  end  
end

puts "David".reverse

## alias_method
class String
  alias_method :__old_reverse__, :reverse 
end