
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
  
end 