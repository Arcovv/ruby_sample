obj = Object.new

def obj.talk
	puts "I am an object."
	puts "(Do you Object?)"
end

def obj.c2f(c)  # formal parameter 形式參數
	c * 9.0 / 5 + 32 # argument 實際參數
end

puts obj.c2f(100)

def obj.c2f(c)
	return 9.0 / 5 + 32
end