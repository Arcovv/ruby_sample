class Symbol
  def to_proc
    puts "In the new Symbol#to_proc!"
    Proc.new { |obj| obj.send(self) }
  end
end

# $ irb --simple-prompt -I. -r sym2proc
# >> %w{ david matz }.map(&:capitalize)
# In the new Symbol#to_proc!
# => ["David", "Matz"]