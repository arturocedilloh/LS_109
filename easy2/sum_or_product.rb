def compute(type, number)
  answer = 0
  method_type =[]
  if type == 's'
    (1..number).each do |item|
      answer += item
    end
    method_type = "sum"
  elsif type == 'p'
    answer = 1
    (1..number).each do |item|
      answer *= item
    end
    method_type = "product"
  end
  puts "The #{method_type} of the integers between 1 and #{number} is #{answer}."
end

number_entered = 0
type_entered = ""
puts ">> Please enter an integer greater than 0:"
loop do
  number_entered = gets.to_i
  break if number_entered > 0
  puts ">> Incorrect value entered!!! Please enter an integer greater than 0:"
end

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
loop do
  type_entered = gets.chomp
  break if %w[p s].include? type_entered.downcase
  puts ">> Incorrect value entered!!! Enter 's' to compute the sum, 'p' to compute the product."
end

compute(type_entered, number_entered)
