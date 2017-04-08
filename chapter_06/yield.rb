class Integer 
  def my_times
    c = 0
    until c == self
      yield(c)
      c += 1
    end
    self
  end
end

array = [1, 2, 3, 4, 5]
array.each do |a| puts a end


class Array 
  def my_each
    c = 0
    until c == size
      yield(self[c])
      c += 1
    end
    self
  end

  def my_map
    c = 0
    acc = []
    until c == size
      acc << yield(self[c])
      c += 1
    end
    acc
  end

  def my_map
    acc = []
    my_each { |e| acc << yield(e) }
    acc
  end
  
end
