def swap_name(name)
  first_name = name.split[0]
  last_name = name.split[1]
  "#{last_name}, #{first_name}"
end

p swap_name('Joe Roberts')
