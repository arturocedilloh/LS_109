def multiply_all_pairs(array1, array2)
  result_array = []

  array1.each do |item1|
    array2.each do |item2|
      result_array << item1 * item2
    end
  end
  result_array.sort
end
p multiply_all_pairs([2, 4], [4, 3, 1, 2])
