def staggered_case(words)
  upcase_word = true
  new_word = words.chars.each do |word|
              if ('a'..'z').include?(word) || ('A'..'Z').include?(word)
                if upcase_word
                  word.upcase!
                  upcase_word = false
                else
                  word.downcase!
                  upcase_word = true
                end
              end
            end.join
end
p staggered_case('I Love Launch School!')
p staggered_case('ALL_CAPS')
p staggered_case('ignore 77 the 444 numbers')
