def reverse!(list)
  reversed_array = []
  list.count.times do
    reversed_array << list.pop
  end
  reversed_array
end

p reverse!([])  
