array = []
puts "==> Enter 1st number:"
array[0] = gets.chomp.to_i

puts "==> Enter 2nd number:"
array[1] = gets.chomp.to_i

puts "==> Enter 3rd number:"
array[2] = gets.chomp.to_i

puts "==> Enter 4th number:"
array[3] = gets.chomp.to_i

puts "==> Enter 5th number:"
array[4] = gets.chomp.to_i

puts "==> Enter last number:"
last_number = gets.chomp.to_i

if array.include? last_number
  puts "The number #{last_number} appears in #{array}"
else
  puts "The number #{last_number} does not appear in #{array}"
end
