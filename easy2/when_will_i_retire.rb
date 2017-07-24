CURRENT_YEAR = 2016
puts "What is your age?"
age = gets.chomp.to_i

puts "What what age will you like to retire?"
retirement_age = gets.chomp.to_i

years_to_go = retirement_age - age
puts "It's #{CURRENT_YEAR}. You will retire in #{CURRENT_YEAR + years_to_go}."
puts "You have only #{years_to_go} years of work to go!"
