# def palindrome?(word)
#   reversed_array = []
#   array = word.chars
#   array.count.times do
#     reversed_array << array.pop
#   end
#   reversed_word = reversed_array.join
#   word == reversed_word
# end
ALPHA = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
NUMERIC = %w(0 1 2 3 4 5 6 7 8 9)

def real_palindrome?(word)
  reversed_array = []
  new_word = word.chars.select do |letter|
    ALPHA.include?(letter.downcase) || NUMERIC.include?(letter)
  end
  clean_word = new_word.join

  new_word.count.times do
    reversed_array << new_word.pop.downcase
  end

  reversed_word = reversed_array.join
  clean_word.downcase == reversed_word.downcase
end


p real_palindrome?('madam') #== true
p real_palindrome?('Madam') #== true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") #== true # (only alphanumerics matter)
p real_palindrome?('356653') #== true
p real_palindrome?('356a653') #== true
p real_palindrome?('123ab321') #== false
p real_palindrome?('Ana') #== false
