# 12.5.3

require 'stringio'
require_relative 'decommenter'

string = <<EOM
# This is a comment.
This is not a comment.
# This is.
   # So is this.
This is also not a comment.
EOM

infile = StringIO.new(string)
outfile = StringIO.new("")
DeCommenter.decomment(infile, outfile)
puts "Test successed" if outfile.string == <<EOM
This is not a comment.
This is also not a comment.
EOM