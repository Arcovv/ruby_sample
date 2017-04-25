module DeCommenter
  def self.decomment(infile, outfile, comment_re = /\A\s*#/)
    infile.each do |inline|
      outfile.print inline unless inline =~ comment_re
    end
  end
end

# File.open("myprogram.rb") do |inf|
#   File.open("myprogram.rb.out", "w") do |outf|
#     DeCommenter.decomment(inf, outf)
#   end
# end

# tempfile
# require 'tempfile'
# tf = Tempfile.new("my_temp_file")