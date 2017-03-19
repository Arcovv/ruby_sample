module Stacklike
  
  def stack
    @stack ||= [] # if stack isn't `false` or `nil`, will be a array.
  end
  
  def add_to_stack(obj)
    stack.push(obj)
  end
  
  def take_from_stack
    stack.pop
  end

end
