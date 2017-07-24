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

def substrings(words)
  new_array = []
  word_array = words.chars
  while word_array.size > 0
    words = word_array.join
    new_array << substrings_at_start(words)
    word_array.delete_at(0)
  end
  new_array
end

def palindromes(string)
  all_substrings = substrings(string).flatten
  results = []
  all_substrings.each do |substring|
    results << substring if palindrome?(substring)
  end
  results
end

def palindrome?(string)
  (string == string.reverse) && (string.size > 1)
end

p palindromes('abcd')
p palindromes('hello-madam-did-madam-goodbye')
