def substrings_at_start(words)
  word_array = words.chars
  running_word = ''
  new_array = []
  word_array.each do |word|
    running_word += word
    new_array << running_word
  end
  new_array
end

p substrings_at_start('abc') #== ['a', 'ab', 'abc']
p substrings_at_start('a') #== ['a']
p substrings_at_start('xyzzy') #== ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
