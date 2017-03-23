class Ticket
  attr_accessor :venus

  def initialize(venus)
    self.venus = venus
  end

  def ===(other_ticket)
    self.venus == other_ticket.venus
  end

end


t1 = Ticket.new("Conference Center")
t2 = Ticket.new("Town Hall")
t3 = Ticket.new("Conference Center")

case t1
when t2 
  puts "t1 === t2"
when t3
  puts "t1 === t3"
else
  puts "No match"
end

  

i_win = true
i_always_win = true
i_lose = !i_win

case 
when i_win
  puts "I win!"
when i_always_win
  puts "I always win!"
when i_lose
  puts "I lose!"
else 
  put "I don`t know!"
end


puts case
  when i_win
    "I win!"
  when i_lose
    "I lose"
  end
