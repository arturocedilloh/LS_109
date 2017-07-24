puts "What is your name?"
user_name = gets.chomp

(user_name.end_with?('!'))? ( puts "HELLO #{user_name.upcase}. WHY ARE YOU SCREAMING?") : (puts "Hello #{user_name}")
