def palindrome?(word)
  reversed_array = []
  array = word.chars
  array.count.times do
    reversed_array << array.pop
  end
  reversed_word = reversed_array.join
  word == reversed_word
end

p palindrome?('madam') #== true
p palindrome?('Madam') #== false          # (case matters)
p palindrome?("madam i'm adam") #== false # (all characters matter)
p palindrome?('356653') #== true
