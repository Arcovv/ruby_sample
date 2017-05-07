# 15.4.1

require_relative 'callertools'

def x
  y
end

def y
  z
end

def z
  puts "Stacktrace: "
  p caller
end

def z
  stack = CallerTools::Stack.new
  puts stack.report
end

x