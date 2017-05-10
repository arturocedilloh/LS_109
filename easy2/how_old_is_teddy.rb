def random_age
  random_age = Random.new
  "Teddy is #{20 + random_age.rand(180)} years old!"
end

puts random_age
