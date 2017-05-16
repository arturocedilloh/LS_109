def word_sizes(sentence)
sentence_array = sentence.split(' ')
word_size_count = {}
sentence_array.each do |word|
  if word_size_count.has_key?(word.size)
     word_size_count[word.size] += 1
   else
     word_size_count[word.size] = 1
   end
 end
 word_size_count
end

p word_sizes('Four score and seven.')
p word_sizes('Hey diddle diddle, the cat and the fiddle!') #== { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") #== { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') #== {}
