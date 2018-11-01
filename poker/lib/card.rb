require_relative 'deck'

class Card 
  attr_reader :suit, :value
  attr_accessor :position, :shown
  
  def initialize(suit, value)
    @suit = suit
    @value = value
    @shown = false
  end
end 