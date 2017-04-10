# 10.8.3
array = ["2", 1, "3", "4", 6]
p array.sort_by { |a| a.to_i }
p array.sort_by(&:to_i)