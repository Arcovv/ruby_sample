class OldTicket

  def initialize(venue, date)
    @venue = venue
    @date = date
  end
  
  # set price
  def price=(price)
    @price = price
  end
  
  # get price
  def price
    @price
  end
  
  # get venue
  def venue
    @venue
  end
  
  # get date
  def date
    @date
  end
  
end

class TicketRW
  # get attr
  attr_reader :venue, :date, :price
  # set attr
  attr_writer :price

  def initialize(venue, date)
    @venue = venue
    @date = date
  end
  
end

class TicketRA
  attr_reader :venue, :date
  attr_writer: :date
  attr_accessor :price
  
  attr :name, true # attr_accessor
  attr :name # attr_reader
end

# 總結
# At page 68