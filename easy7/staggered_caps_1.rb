def staggered_case(words)
  new_word = words.chars.each_with_index do |word,index|
              (index % 2 == 0) ? word.upcase! : word.downcase!
            end.join
end
p staggered_case('I Love Launch School!')
p staggered_case('ALL_CAPS')
p staggered_case('ignore 77 the 444 numbers') 
