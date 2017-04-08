# 7.7.1

str = "Another plain old string."

module StringExtras
  def shout
    self.upcase + "!!!"
  end
end

class String
  include StringExtras
end

puts str.methods.include?(:shout)

# 7.7.2

# >> "aaa".methods.sort == String.instance_methods.sort
# => true
# >> Enumerable.instance_methods.sort

# 7.7.3

# obj.private_methods
# obj.public_methods
# obj.protected_methods
# obj.singleton_methods

# MyClass.private_instance_methods
# MyClass.public_instance_methods
# MyClass.protected_instance_methods
