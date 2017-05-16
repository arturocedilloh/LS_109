ASCII_LOWERCASE = (97..122)
ASCII_UPPERCASE = (65..90)

def word_sizes(sentence)
  sentence_array = sentence.chars.select do |word|
      if ASCII_LOWERCASE.include?(word.ord) || ASCII_UPPERCASE.include?(word.ord) || word.ord == 32
        word
      end
    end
  new_array = sentence_array.join

  word_size_count = {}
  new_array.split(' ').each do |word|
  if word_size_count.has_key?(word.size)
     word_size_count[word.size] += 1
   else
     word_size_count[word.size] = 1
   end
  end
 word_size_count
end

p word_sizes('Four score and seven.')
p word_sizes('Hey diddle diddle, the cat and the fiddle!') # == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") # == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') #== {}
