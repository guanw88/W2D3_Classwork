require 'deck'
require 'rspec'

RSpec.describe Deck do 
  subject(:deck) { Deck.new }
  let(:card) { double("card", suit: "s")}
  let (:hand) { double("hand", draw: "1")}
  
  describe "#initialize" do
    it "should have 52 cards" do
      expect(deck.cards.keys.length).to eq(52)
      expect(deck.cards[rand(52)]).to be_an_instance_of(Card)
    end
    
    it "should have 13 cards of each suit" do
      expect(deck.cards.select {|k,card| card.suit == "s"}.length).to eq(13)
    end
    
    it "should have 4 cards of each value" do
      expect(deck.cards.select {|k,card| card.value == "A"}.length).to eq(4) 
    end 
    
    it "should have no repeated cards" do 
      expect(deck.values).to eq(deck.values.uniq)
    end 
  end
  
  describe "#values" do 
    # context "when no cards are drawn" do 
    #   it "should have 52 cards" do
    #     expect(deck.values.length).to eq(52)
    #   end 
    # end 
    
    it "should return an array of cards with their value and suit" do 
      #expect(deck.values).to  
      
      #is length 2 
      #first value is suit 
      #second value is value 
      # is an array
    end 
    
  end 
end 