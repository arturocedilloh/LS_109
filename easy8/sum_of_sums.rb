def sum_of_sums(number_array)
  result = 0
  result2 = 0
  number_array.each do |item|
    result += item
    result2 += result
  end
  result2
end
p sum_of_sums([3, 5, 2])
p sum_of_sums([1, 5, 7, 3])
p sum_of_sums([4])
p sum_of_sums([1, 2, 3, 4, 5]) 
