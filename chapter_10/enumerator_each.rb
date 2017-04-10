# 10.10.1

array = %w{ a b c }
e = array.map
p e
p e.each { |n| n.upcase }

# 10.10.2

class PlayingCard
  SUITS = %w{ clubs diamonds hearts spades }
  RANKS = %w{ 2 3 4 5 6 7 8 9 10 J Q K A }
  class Deck
    def cards
      @cards.to_enum
    end
    def initialize(n=1)
      @cards = []
      SUITS.cycle(n) do |s|
        RANKS.cycle(1) do |r|
          @cards << "#{r} of #{s}"
        end
      end
    end
  end
end

deck = PlayingCard::Deck.new
# deck.cards << "Joker!!!"

# 10.10.3

names = %w{ David Yukihiro }
e = names.to_enum
puts e.next
puts e.next
e.rewind
puts e.next

# 10.10.4

module Music
  class Scale
    NOTES = %w{ c c# d d# e f f# g a a# b }
    def play
      NOTES.each { |note| yield note }
    end
  end
end

scale = Music::Scale.new
scale.play { |note| puts "Next note is #{note}"}

enum = scale.enum_for(:play)
p enum
p enum.map { |n| n.upcase }
p enum.select { |n| n.include?("#") }