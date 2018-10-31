require_relative 'deck'

class Card 
  attr_reader :suit, :value
  attr_accessor :position, :shown
  
  def initialize(suit, value)
    @suit = suit
    @value = value
    @position = "deck" #needs position arg
    @shown = false
  end
end 