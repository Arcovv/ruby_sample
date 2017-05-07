# 15.1.6

class C
  def self.method_added(m)
    puts "Method #{m} was just added"
  end
  
  def a_new_method
  end
end

class C
  def self.singleton_method_added(m)
    puts "Method #{m} was just added"
  end
  
  def self.new_class_method
  end
end

obj = Object.new

def obj.singleton_method_added(m)
  puts "Singleton method #{m} was just added"
end

def obj.a_new_singleton_method
end
