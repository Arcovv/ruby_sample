# 15.2.1

string = "Test string"
p string.methods.grep(/case/).sort
p string.methods.grep(/.!/).sort

methods = string.methods
bangs = string.methods.grep(/.!/)

unmatched = bangs.reject do |b|
  methods.include?(b[0..-2].to_sym)
end

if unmatched.empty?
  puts "All bang methods are matched by non-bang methods"
else
  puts "Some bangs methods have no non-bang partner"
  puts unmatched
end


# 15.2.2

o = Object.new
p o.private_methods.size
p o.protected_methods.size

class Person
  attr_accessor :name
  def name=(name)
    @name = name
    normalize_name
  end

  private
  def normalize_name
    name.gsub!(/[^-a-z'.\s]/i, "")
  end
end

david = Person.new
david.name = "1234David!! Bl%a9ck"  
raise "Problem" unless david.name == "David Black"
puts "Name has been normalized."
p david.private_methods.sort.grep(/normal/)

# 15.2.3

# overrided methods
overrides = []
enum_classes = ObjectSpace.each_object(Class).select do |c|
  c.ancestors.include?(Enumerable)
end
enum_classes.sort_by { |c| c.name }.each do |c|
  overrides[c] = c.instance_methods(false) & Enumerable.instance_methods(false)
end
overrides.delete_if { |c, methods| methods.empty? }
overrides.each do |c, methods|
  puts "Class #{c} overrides: #{methods.join(", ")}"
end
