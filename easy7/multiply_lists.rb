def multiply_list(array1, array2)
  # result_array = []
  # array1.each_with_index { |item, index| result_array[index] = array1[index] * array2[index]}
  # result_array
   array1.zip(array2).map {|a, b| a * b }
end
p multiply_list([3, 5, 7], [9, 10, 11])
