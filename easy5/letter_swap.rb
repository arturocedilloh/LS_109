def swap(sentence)
  array_of_words = sentence.split(' ')
  array_of_words.map! do |word|
    letters = word.chars
    if letters.count > 1
      first_letter = letters.shift
      last_letter = letters.pop
      letters.unshift(last_letter)
      letters.push(first_letter)
      letters.join
    else
      letters
    end
  end
  array_of_words.join(' ')
end

p swap('Oh what a wonderful day it is') #== 'hO thaw a londerfuw yad ti si'
p swap('Abcde') #== 'ebcdA'
p swap('a') #== 'a'
