def rotate_array(arr)
  first_element = arr[0]
  arr_last_index = arr.size - 1
  new_array = []
  arr.each_with_index do |item, idx|
    if idx != 0
      new_array << item
    end
  end
  new_array << first_element
  new_array
end

p rotate_array([7, 3, 5, 2, 9, 1])
p rotate_array(['a', 'b', 'c'])
p rotate_array(['a'])
