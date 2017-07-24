
def rotate_array(input_array)
  new_array = []
  first_element = input_array[0]

  (1..input_array.count-1).each {|idx| new_array << input_array[idx]}

  new_array << first_element

end

def rotate_rightmost_digits(input_number, n)
  integer_array = input_number.to_s.chars
  if n > 1
    front_array = integer_array[0..-n-1]
    back_array = integer_array[-n..-1]
    new_array = rotate_array(back_array)
    (front_array + new_array).join.to_i
  else
    input_number
  end
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
