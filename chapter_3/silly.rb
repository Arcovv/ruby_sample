class Silly

  def price=(x)
    puts "The current time is #{Time.now}."
  end
  
end

s = Silly.new
s.price = 100




class Ticket 
  def price=(amount)
    if (amout * 100).to_i == amount * 100
      @price = amount
    else
      puts "The price seems to be malformed"
    end
  end
  
  def price
    @price
  end
end



class TraveAgentSession
  def year=(y)
    @year = y.to_i
    if @year < 100
      @year = @year + 2000
    end
  end
end
