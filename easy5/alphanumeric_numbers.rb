NUMBER_WORDS = %w(zero one two three four
                  five six seven eight
                  nine ten eleven twelve
                  thirteen fourteen fifteen sixteen
                  seventeen eighteen nineteen)

def alphabetic_number_sort
  alpha_hash = NUMBER_WORDS.each_with_index.to_h
  sorted_words = NUMBER_WORDS.sort
  sorted_numbers = sorted_words.map {|word| alpha_hash[word]}
end

p alphabetic_number_sort
