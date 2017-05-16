# MINUTES_PER_HOUR = 60
# HOURS_PER_DAY = 24
# MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR
#
# def time_of_day(minutes)
#
#   if minutes >= 0 && minutes <= MINUTES_PER_DAY
#     time_array = format_24_hour(minutes.divmod(MINUTES_PER_HOUR))
#     "#{time_array[0]}:#{time_array[1]}"
#   elsif minutes > MINUTES_PER_DAY
#     time_array = format_24_hour((minutes -(minutes/MINUTES_PER_DAY).round(0)*1440).divmod(MINUTES_PER_HOUR))
#     "#{time_array[0]}:#{time_array[1]}"
#   elsif minutes < 0 && minutes >= -MINUTES_PER_DAY
#     time_array = format_24_hour((MINUTES_PER_DAY + minutes).divmod(MINUTES_PER_HOUR))
#     "#{time_array[0]}:#{time_array[1]}"
#   elsif minutes < -MINUTES_PER_DAY
#     time_array = format_24_hour((minutes + (minutes/MINUTES_PER_DAY).round(0)*MINUTES_PER_DAY).divmod(MINUTES_PER_HOUR))
#     "#{time_array[0]}:#{time_array[1]}"
#   end
# end
#
# def format_24_hour (array)
#   array.map! do |i|
#      if i.to_s.size == 1
#        "0" + i.to_s
#      else
#        i.to_s
#      end
#    end
#   array
# end


MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def time_of_day(delta_minutes)
  delta_minutes =  delta_minutes % MINUTES_PER_DAY
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end


p time_of_day(0) # == "00:00"
p time_of_day(-3) #== "23:57"
p time_of_day(35) # == "00:35"
p time_of_day(-1437) #== "00:03"
p time_of_day(3000) # == "02:00"
p time_of_day(800) #== "13:20"
p time_of_day(-4231) #== "01:29"
