def digit_list(list)
number_array = []
list.to_s.chars.each do |digit|
  number_array << digit.to_i
end
number_array
end

# or

def digit_list1(number)
  number.to_s.chars.map(&:to_i) # something.map { \char\ char.to_i }
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]
