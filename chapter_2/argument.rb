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