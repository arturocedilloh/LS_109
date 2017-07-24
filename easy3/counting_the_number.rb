puts "Please write word or multiple words:"
words = gets.chomp

letter_count = (words.chars.select {|letter| letter != ' '}).count

puts "There are #{letter_count} characters in #{words}"
