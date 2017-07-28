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

def max_rotation(input_number)
  count = input_number.to_s.size
  (count-1).times do
    input_number = rotate_rightmost_digits(input_number,count)
    count -= 1
  end
  input_number
end

p max_rotation(735291)
p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
