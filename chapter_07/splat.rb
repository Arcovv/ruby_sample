# 7.4.2

def combine_names(first_name, last_name)
  first_name + " " + last_name
end

names = ["David", "Black"]
puts combine_names(*names)