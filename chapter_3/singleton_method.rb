class Ticket
  attr_reader :venue, :date
  attr_accessor :price

  def initialize(venue, date)
    @venue = venue
    @date = date
  end
  
  def Ticket.most_expensive(*tickets)
    tickets.max_by(&:price)
  end
  
end

th = Ticket.new("T", "11/22/33")
cc = Ticket.new("C", "12/22/33")
fg = Ticket.new("F", "13/22/33")
th.price = 20.0
cc.price = 30.0
fg.price = 40.0
highest = Ticket.most_expensive(th, cc, fg)
puts "The highest-priced ticket is the one of #{highest.venue}."