class Ticket

  def initialize(venue, date)
    @venue = venue
    @date = date
  end

  def venue
    @venue
  end
  
  def date
    @date
  end

  def price=(amount)
    @price = amount
  end
  
  def price
    @price
  end
  
end

th = Ticket.new("Town Hall", "11/12/13")
th.price = 64.00
puts "The th costs $#{"%.2f" % th.price}."
th.price = (73.00)
puts "New price $#{"%.2f" %th.price}."
cc = Ticket.new("Convention Center", "12/13/14")

puts "We have two tickets."
puts "The first is for #{th.venue} event on #{th.date}."
puts "The second is for #{cc.venue} event on #{cc.date}."