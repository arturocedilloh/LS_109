puts 'Enter the length of the room in meters:'
room_length = gets.chomp.to_f

puts 'Enter the width of the room in meters:'
room_width = gets.chomp.to_f

square_meters = (room_length * room_width).round(2)
square_feet = (square_meters * 10.7639).round(2)

puts "The area of the room is #{square_meters} square meters (#{square_feet} square feet)"
