def halvsies(list)
  new_array = []
  array_size = list.count
  if array_size % 2 == 0
    first_array_size = array_size / 2
  else
    first_array_size = (array_size / 2) + 1
  end
  index = 0
  first_array = []
  second_array = []
  first_index = 0
  second_index = 0
  list.size.times do
    if first_array_size >= index + 1
      first_array[first_index ] = list[index]
      first_index += 1
    else
      second_array[second_index] = list[index]
      second_index += 1
    end
    index += 1
  end
  new_array << first_array
  new_array << second_array
end

p halvsies([]) 
