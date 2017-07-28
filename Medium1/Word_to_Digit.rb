def word_to_digit(text)
  new_array = (text.split(/\b/).map do |word|
    if word.include? 'zero'
      word.gsub(/\b#{word}\b/,'0')
    elsif word.include? 'one'
      word.gsub(/\b#{word}\b/,'1')
    elsif word.include?  'two'
      word.gsub(/\b#{word}\b/,'2')
    elsif word.include?  'three'
      word.gsub(/\b#{word}\b/,'3')
    elsif word.include?  'four'
      word.gsub(/\b#{word}\b/,'4')
    elsif word.include?  'five'
      word.gsub(/\b#{word}\b/,'5')
    elsif word.include? 'six'
      word.gsub(/\b#{word}\b/,'6')
    elsif word.include?  'seven'
      word.gsub(/\b#{word}\b/,'7')
    elsif word.include?  'eight'
      word.gsub(/\b#{word}\b/,'8')
    elsif word.include? 'nine'
      word.gsub(/\b#{word}\b/,'9')
    else
      word
    end
  end).join

end

p word_to_digit('Please call me at five five five one two three four. Thanks.')
