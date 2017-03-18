obj = Object.new

def obj.one_arg(x)
	puts "I require one and only one argument!"
end

obj.one_arg(1)

def obj.muti_args(*x)
	puts "I can take zero or more arguments!"
end

obj.muti_args(1,2,3,4)

def obj.two_or_more(a,b,*c)
	puts "I require two or more arguments!"
	puts "And sure enough, I got: "
	p a, b, c
end

obj.two_or_more(1,2,3,4,6)

def obj.default_args(a,b,c=2)
	puts "Values of variables: ", a, b, c
end

obj.default_args(1, 2)

def obj.mixed_args(a,b,*c,d)
	puts "Arguments:"
	p a, b, c, d
end

obj.mixed_args(1,2,3,4,5)
obj.mixed_args(1,2,3)

def obj.unleashed(a,b=1,*c,d,e)
	puts "Arguments:"
	p a, b, c, d, e
end

obj.unleashed(1,3,5)