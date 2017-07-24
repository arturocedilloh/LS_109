def print_in_box(text)
  text_size = text.size
  horizontal_dash = ''
  horizontal_space = ''
  text_size.times do
    horizontal_dash << '-'
    horizontal_space << ' '
  end
  puts "+-#{horizontal_dash}-+"
  puts "| #{horizontal_space} |"
  puts "| #{text} |"
  puts "| #{horizontal_space} |"
  puts "+-#{horizontal_dash}-+"
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
