# 14.6.1

system("date")
p $?

system("cat")
p $?

system('grep "D"')
p $?

d = `date`
puts d