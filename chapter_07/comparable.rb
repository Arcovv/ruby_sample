# 7.6.2

class Bid
  include Comparable
  attr_accessor :estimate
  def <=>(other_bid)
    self.estimate <=> other_bid.estimate
  end
end

# >> require "./comparable.rb"
# => true
# >> bid1 = Bid.new
# => #<Bid:0x007f93c6119340>
# >> bid2 = Bid.new
# => #<Bid:0x007f93c884dfd8>
# >> bid1.estimate = 100
# => 100
# >> bid2.estimate = 105
# => 105
# >> bid1 < bid2
# => true