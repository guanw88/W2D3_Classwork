require 'card'
require 'rspec'

RSpec.describe Card do 
  subject(:card) {Card.new("s", "4")} #need to add parameters here?
  let(:deck) { double("Deck")}
  
  describe "#initialize" do
    it "should have a suit" do 
      expect(card.suit).to eq("s")
    end 
    
    it "should have a value" do 
      expect(card.value).to eq("4")
    end 
    
    it "should be hidden or revealed" do 
      expect(card.shown).to be false
    end 
    
  end 
  
end 