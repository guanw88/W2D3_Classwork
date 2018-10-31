
class Array
  def my_uniq 
    result = []
    self.each do |el|
      result << el unless result.include?(el)
    end 
    result
  end 
  
  def two_sum 
    indices = []
    self.each_index do |idx1|
      self.each_index do |idx2|
        indices << [idx1,idx2] if idx2 > idx1 && self[idx1] + self[idx2] == 0
      end 
    end 
    indices
  end
  
  def my_transpose
    raise ArgumentError unless self.length == self[0].length
    
    transposed = []
    
    self.each_with_index do |row, i|
      subarray = []
      row.each_with_index do |el, j|
        subarray << self[j][i]
      end
      transposed << subarray
    end
    
    transposed
  end
      
  def stock_picker
    profit = nil
    indices = []
    
    self.each_with_index do |buyprice, idx1|
      self.each_with_index do |sellprice, idx2|
        if idx2 > idx1
          profit = sellprice - buyprice if profit.nil?
          if (sellprice - buyprice) > profit
            profit = sellprice - buyprice
            indices = [[idx1, idx2]]
          elsif (sellprice - buyprice) == profit
            indices << [idx1, idx2]
          end
        end 
      end
    end
    indices.flatten! if indices.length == 1
    profit > 0 ? indices : []
  end
  
end 