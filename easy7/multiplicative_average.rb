def show_multiplicative_average(number_array)
  result = 1.to_f
  number_array.each {|item| result = result * item}
  formated_result = format('%.3f',(result / (number_array.size)))
  puts "The result is #{formated_result}"
end

show_multiplicative_average([3, 5])
show_multiplicative_average([6])
show_multiplicative_average([2, 5, 7, 11, 13, 17])
