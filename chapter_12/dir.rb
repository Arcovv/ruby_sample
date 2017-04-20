# 12.4

d = Dir.new("../chapter_12")
p d

# 12.4.1

p d.entries
p Dir.entries("../chapter_12")

entries = d.entries
entries.delete_if