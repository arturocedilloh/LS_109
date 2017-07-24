def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(numbers, digits)
  number_size = numbers.to_s.size
  first_idx = number_size - digits
  new_number = numbers.to_s[first_idx..-1].chars

  (numbers.to_s[0..first_idx-1].chars + rotate_array(new_number)).join.to_i
end

p rotate_rightmost_digits(735291, 1) #== 735291
p rotate_rightmost_digits(735291, 2) #== 735219
p rotate_rightmost_digits(735291, 3) #== 735912
p rotate_rightmost_digits(735291, 4) #== 732915
p rotate_rightmost_digits(735291, 5) #== 752913
p rotate_rightmost_digits(735291, 6) #== 352917
