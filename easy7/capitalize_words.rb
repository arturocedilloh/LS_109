def word_cap(sentence)
  sentence_array = sentence.split
  sentence_array.map! {|word| word.capitalize}.join(' ')
end

p word_cap('four score and seven')
p word_cap('the javaScript language')
p word_cap('this is a "quoted" word')
