# 10.5.1

[1, 2, 3].reverse_each { |e| puts e * 10 }
names = ["a", "b", "c", "e", "d"]
names.each_with_index do |pres, i|
  puts "#{i} -> #{pres}"
end

# 10.5.2

array = [1, 2, 3]
array.each.with_index do |e, i|
  puts "i: #{i}, e: #{e}"
end

# 10.5.3

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
puts "each_slice:"
array.each_slice(3) { |slice| p slice }
puts "each_cons:"
array.each_cons(3) { |cons| p cons}

# 10.5.4

class PlayingCard
  SUITS = %w{ clubs diamonds hearts spades }
  RANKS = %w{ 2 3 4 5 6 7 8 9 10 J Q K A }
  class Deck
    attr_reader :cards
    def initialize(n = 1)
      @cards = []
      SUITS.cycle(n) do |s|
        RANKS.cycle(1) do |r|
          @cards << "#{r} of #{s}"
        end
      end
    end
  end
end

deck = PlayingCard::Deck.new(2)
puts "deck.cards.size: #{deck.cards.size}"

# 10.5.5

puts [1, 2, 3, 4].inject(0) { |acc, n| acc + n }