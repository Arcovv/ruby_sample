# 14.3.1

class C
  def talk 
    puts "Method-grabbing test! self is #{self}."
  end
end

c = C.new
meth = c.method(:talk)
meth.call

class D < C
end

d = D.new
unbound = meth.unbind
unbound.bind(d).call

unbound = C.instance_method(:talk)
unbound.bind(d).call

###

class AClass
  def a_method
    puts "Definition in class A"
  end
end

class BClass < AClass
  def a_method 
    puts "Definition in class B (subclass of A)"
  end
end

class CClass < BClass
  def call_original
    AClass.instance_method(:a_method).bind(self).call
  end
end

c = CClass.new 
# Definition in class B (subclass of A)
c.a_method # How to response the lowest level method?
# Definition in class A
c.call_original