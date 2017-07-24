# def crunch(sentence)
#   sentence_array = sentence.split(' ')
#   sentence_array.map! {|word| word.chars.uniq.join}
#   sentence_array.join(' ')
# end

def crunch(sentence)
  p sentence_array = sentence.chars
  p previous_letter = sentence[0]
  p result = sentence[0]
  sentence_array.each do |letter|
    if previous_letter != letter
      result += letter
    end
    previous_letter = letter
  end
  result
end

# p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# p crunch('4444abcabccba') == '4abcabcba'
# p crunch('ggggggggggggggg') == 'g'
# p crunch('a') == 'a'
p crunch('') == ''
