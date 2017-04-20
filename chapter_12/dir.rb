# 12.4

d = Dir.new("../chapter_12")
p d

# 12.4.1

p d.entries
p Dir.entries("../chapter_12")

entries = d.entries
entries.delete_if { |entry| entry =~ /^\./ }
entries.map! { |entry| File.join(d.path, entry) }
entries.delete_if { |entry| !File.file?(entry) }
print "Total bytes: "
puts entries.inject(0) { |total, entry| total + File.size(entry) }

puts "------"

p Dir["../chapter_12/*.rb"]

dir = "../chapter_12"
print "Total bytes: "
puts entries = Dir["#{dir}/*"]
  .select { |entry| File.file?(entry) }
  .inject(0) { |total, entry| total + File.size(entry) }


# 12.4.2

newdir = "/tmp/newdir"
newfile = "newfile"
Dir.mkdir(newdir)
Dir.chdir(newdir) do 
  File.open(newfile, "w") do |f|
    f.puts "Sample file in new directory"
  end
  puts "Current directory: #{Dir.pwd}"
  puts "Directory listing: "
  p Dir.entries(".")
  File.unlink(newfile)
end
Dir.rmdir(newdir)
print "Does #{newdir} still exist? "
if File.exist?(newdir)
  puts "YES"
else
  puts "NO"
end
