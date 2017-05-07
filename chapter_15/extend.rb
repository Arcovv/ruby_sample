# 15.1.3

module M
  def self.extended(obj)
    puts "Module #{self} is being used by #{obj}."
  end

  def an_inst_method
    puts "This module supplies this instance method."
  end
end

my_obj = Object.new
my_obj.extend(M)
my_obj.an_inst_method