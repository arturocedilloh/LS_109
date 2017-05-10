def reverse_words(words)
  array =  words.split.map do |word|
    if word.size > 4
      word.reverse
    else
      word
    end
  end
  array.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
