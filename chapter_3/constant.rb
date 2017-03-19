class Ticket
  VENUES = ["Convention Center", "Fairgrounds", "Town Hall"]
  
  attr_accessor :price

  def initialize(venue, date)
    if VENUES.include?(venue)
      @venue = venue
    else
      raise ArgumentError, "Unknown venue #{venue}."
    end
    @date = date
  end
  
end

# p "Original values: #{Ticket::VENUES}"

# ticket_1 = Ticket.new("Test", "11/22/33")
# ticket_2 = Ticket.new("Town Hall", "12/22/23")

venues = Ticket::VENUES
venues << "High School Gym"

# p "venues: #{venues}"
# p "New values: #{Ticket::VENUES}"

ticket = Ticket.new("Town Hall", "11/11/11")
ticket.price=(11.0)

p ticket.is_a?(Ticket)
p ticket.respond_to?("price")
p ticket.respond_to?("fly")

def ticket.fly
  "Ticket can fly now!"
end

p ticket.respond_to?("fly")