module M
  def report
    puts "'report' method in module M"
  end
end

class C
  include M
end

class D < C
end

obj = D.new

if obj.respond_to?("report")
  puts "true"
else
  puts "no response"
end

obj.report