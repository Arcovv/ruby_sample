class Stack
  attr_reader :stack
  
  def initialize
    @stack = []
  end

  def add_to_stack(obj)
    @stack.push(obj)
  end
  
  def take_from_stack
    @stack.pop
  end

end

class CargoHold < Stack
  
  def load_and_report(obj)
    print "Loading objct "
    puts obj.object_id
    add_to_stack(obj)
  end
  
  def unload
    take_from_stack
  end
  
end

module Tools
  class Hammer
  end
end

h = Tools::Hammer.new