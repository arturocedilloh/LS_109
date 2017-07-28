lights_hash = {}
n = 1000
(1..n).each do |idx|
  if idx == 1
    (1..n).each do |key|
      lights_hash[key] = 'ON'
    end
  else
    increment = idx
    (1..n).each do |_|
      if lights_hash[increment] == 'OFF'
        lights_hash[increment] = 'ON'
      elsif lights_hash[increment] == 'ON'
        lights_hash[increment] = 'OFF'
      end
      increment += idx
    end
  end
end

p lights_hash.select {|key,value| lights_hash[key] == 'ON'}.keys
