def remove_vowels(word_array)
vowels = %w(a e i o u)
word_array.map! do |word|
  word.chars.select do |letter|
    !vowels.include? letter.downcase
  end.join
end
word_array
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz))
p remove_vowels(%w(green YELLOW black white))
p remove_vowels(%w(ABC AEIOU XYZ))
