# Implement your object-oriented solution here!
class EvenFibonacci 
  attr_accessor :limit
  def initialize(limit)
    self.limit = limit
  end
  def sum
  array = [0, 1]

  while array[-1] < self.limit 
    last_index = array.length-1 
    second_last = array.length-2
    array.push(array[last_index] + array[second_last])
  end 
  array = array[0..array.length-2]
  sum = 0
  # byebug
  array.each do |num|
    # byebug
    if num.even? 
      sum += num
    end
  end
  sum
  end
end