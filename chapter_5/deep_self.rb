class C
  def show_var
    @v = "I am an instance variable initialized to a string."
    puts @v
  end
  @v = "Instance variables can appear anywhere..."
end

# C.new.show_var

class A
  puts "Just inside class definition block. Here's self:"
  p self
  @v = "I am a instance variable at the top level of a class body."
  puts "And here's the instance variable @v, belonging to #{self}:"
  p @v
  
  puts ""
  
  def show_var
    puts "Inside an instance method definition block. Here's self:"
    p self
    puts "And here's the instance variable @v, belonging to #{self}:"
    p @v
  end

  def set_v
    @v = "set v a string."
  end
  
end

a = A.new
a.show_var
a.set_v
a.show_var