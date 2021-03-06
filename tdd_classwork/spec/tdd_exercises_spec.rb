require 'tdd_exercises'
require 'rspec'

RSpec.describe Array do
  describe "#my_uniq" do 
    subject(:arr) {[1,2,2,3]}
    
    it "does not modify the original array" do 
      expect(arr).to eq([1,2,2,3])
      arr.my_uniq 
      expect(arr).to eq([1,2,2,3])
    end
    
    context "when input array does not have duplicates" do
      subject(:arr) {[1,2,3]}
      it "returns same array" do 
        expect(arr.my_uniq).to eq([1,2,3])
      end 
    end
    
    context "when input array has duplicates" do
      it "returns array without duplicates" do 
        expect(arr.my_uniq).to eq([1,2,3])
      end 
    end
  end 
  
  describe "#two_sum" do
    subject(:arr) {[-1,0,2,-2,1]}
    
    it "returns correct index pairs" do
      expect(arr.two_sum).to eq([[0, 4], [2, 3]])
    end 
  
    it "returns output index in sorted order" do 
      expect(arr.two_sum).to_not eq([[2,3],[0,4]])
    end 
    
    context "when no elements sum to zero" do
      subject(:arr) { [1,2,3,4,5] }
      it "returns empty array" do
        expect(arr.two_sum).to be_empty
      end
    end

    context "when array has repeated values" do
      subject(:arr) {[-1,0,2,-2,-2,1]}
      it "handles duplicate elements properly" do
        expect(arr.two_sum).to eq([[0,5],[2,3],[2,4]])
      end   
    end
  end
  
  describe "#my_transpose" do
    subject(:matrix) { [[0, 1, 2],
                        [3, 4, 5],
                        [6, 7, 8]]}

    it "returns transposed matrix" do
      transposed = matrix.transpose
      expect(matrix.my_transpose).to eq(transposed)
    end
    
    context "when input matrix is not a square matrix" do
      subject(:matrix) {[[0, 1],
                         [2, 3],
                         [4, 5]]}
      it "raises an error" do
        expect{ matrix.my_transpose }.to raise_error(ArgumentError)
      end
    end
  end 
  
  describe "#stock_picker" do 
    subject(:prices) {[5, 10, 15, 7, 1]}
    
    it "returns pair of most profitable days" do 
      expect(prices.stock_picker).to eq([0,2])
    end 
    
    context "when multiple days are equally profitable" do 
      subject(:prices) {[5, 10, 15, 15, 7, 1]}
      
      it "returns multiple pairs" do 
        expect(prices.stock_picker).to eq([[0,2],[0,3]])
      end 
    end 
    
    context "when no days are profitable" do 
      subject(:prices) {[15, 15, 7, 1]}
      it "returns an empty array" do 
        expect(prices.stock_picker).to be_empty
      end 
    end 
    
  end 
   
  
end 
