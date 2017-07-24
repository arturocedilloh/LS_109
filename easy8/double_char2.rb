CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(words)
  result = ''
  words.each_char do |word|
    if CONSONANTS.include?(word.downcase)
      result += word * 2
    else
      result += word
    end
  end
  result
end

p double_consonants('String') #== "SSttrrinngg"
p double_consonants("Hello-World!") #== "HHellllo-WWorrlldd!"
p double_consonants("July 4th") #== "JJullyy 4tthh"
p double_consonants('') #== ""
