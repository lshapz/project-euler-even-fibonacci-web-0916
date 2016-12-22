# Implement your procedural solution here!
require 'byebug'
def even_fibonacci_sum(limit)
  array = [0, 1]

  while array[-1] < limit 
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
# def even_fibonacci_sum(limit)
#   filtered_array = []
#   i, first, second = 0, 0, 1
#   while i < limit
#     i = first + second
#     break if i > limit
#     filtered_array << i if i.even?
#     first = second
#     second = i
#   end
#   filtered_array
#   filtered_array.reduce(:+)
# end


p even_fibonacci_sum(10)
#