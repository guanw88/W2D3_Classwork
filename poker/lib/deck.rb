require_relative 'card'

class Deck
  
  SUITS = ["s","h","d","c"]
  VALUES = ["A","2","3","4","5","6","7","8","9","T","J","Q","K"]
  # 
  # display_hash =
  # 0..51 
  # ["A","s"],
  # 
  # {"A": [S,D,C,H]}
  attr_reader :cards
  
  def initialize
    @cards = cards
    populate_deck
  end
  
  def populate_deck 
    @cards = Hash.new {|h,k| h[k] = Array.new}
    
    (1..52).each do |card_num| 
      @cards[card_num] = Card.new(SUITS[card_num % 4], VALUES[card_num % 13])
    end 
    
    @cards
  end 
  
  def values
    values = []
    @cards.values.each do |card_obj|
      values << [card_obj.suit, card_obj.value]
    end 
    values
  end 

end