def reverse!(list)
  index = 0
  list.count.times do
    last_element = list.pop
    list.insert(index,last_element)
    index += 1
  end
  list
end

p reverse!(%w(a b c d e))
