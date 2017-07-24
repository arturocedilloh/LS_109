def center_of(words)
  word_count = words.size
  middle_word_index = word_count / 2
  if word_count % 2 == 0
    words[(middle_word_index - 1)..middle_word_index]
  else
    words[middle_word_index]
  end

end

p center_of('I love ruby') #== 'e'
p center_of('Launch School') #== ' '
p center_of('Launch') #== 'un'
p center_of('Launchschool') #== 'hs'
p center_of('x') #== 'x'
