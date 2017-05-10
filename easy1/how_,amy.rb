vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

def count_occurrences(vehicle_list)
  vehicle_count = {}
  vehicle_list.each do |vehicle|
    if vehicle_count.has_key?(vehicle)
      vehicle_count[vehicle] += 1
    else
      vehicle_count[vehicle] = 1
    end
  end
  vehicle_count.each do |k, v|
    puts "#{k} => #{v}"
  end
end

p count_occurrences(vehicles)
