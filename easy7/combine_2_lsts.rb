def interleave(list1, list2)
  new_list = []
  list_size = list1.count - 1
  new_list_index = 0
  (0..list_size).each do |index|
    new_list[new_list_index] = list1[index]
    new_list[new_list_index + 1] = list2[index]
    new_list_index += 2
  end
  new_list
end

def interleave_zip(list1, list2)
  list1.zip(list2).join.chars
end

p interleave([1, 2, 3], ['a', 'b', 'c'])
p interleave_zip([1, 2, 3], ['a', 'b', 'c'])
