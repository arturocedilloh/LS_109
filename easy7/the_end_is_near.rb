def penultimate(words)
  last_index = words.split.size
  words.split[last_index -2]
end

p penultimate('last word')
p penultimate('Launch School is great!') 
