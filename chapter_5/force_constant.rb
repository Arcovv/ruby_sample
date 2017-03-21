class Violin
  class String
    attr_accessor :pitch
    def initialize(pitch)
      @pitch = pitch
    end
  end
  
  def initialize
    @e = String.new("E")
    @a = String.new("A")
    @a_string = ::String.new("A String from Ruby")
  end
end
