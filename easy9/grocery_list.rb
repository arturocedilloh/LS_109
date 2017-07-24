def buy_fruit(fruits)

  fruits.each_with_object([]) do |fruit, fruit_list|
    1..fruit[1].times {|i| fruit_list << fruit[0]}
  end

end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])
