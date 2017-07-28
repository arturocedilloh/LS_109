def diamond(int)

  diamond_arr = []
  diamonds = ''
  number_of_diamonds = 1
  padding = int
  top = 0
  bottom = int - 1

  loop do
    diamonds = ('*' * number_of_diamonds).center(padding,' ')
    diamond_arr[top] = diamonds
    diamond_arr[bottom] = diamonds
    number_of_diamonds += 2
    bottom -= 1
    top += 1
    break if number_of_diamonds > padding
  end
  diamond_arr.each {|item| puts item}
end

diamond(1)
diamond(3)
diamond(5)
diamond(9)
