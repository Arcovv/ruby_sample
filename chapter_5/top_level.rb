def talk
  puts "Hello"
end

class Object
  private 
  def talk
    puts "Hello"
  end
  
  public
  def hi
    puts "Hi"
  end
  
end

obj = Object.new
obj.hi
obj.talk # private method

# try to run:
# ruby -e 'p Kernel.private_instance_methods.sort'
