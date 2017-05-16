MINUTES_AT_MIDDAY = 720
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = 1440

def time_of_day(delta_minutes)
  delta_minutes =  delta_minutes % MINUTES_PER_DAY
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end

def after_midnight(twenty_four_time)
  hours, minutes = twenty_four_time.split(':').map {|i| i.to_i}
  (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
end


def before_midnight(twenty_four_time)
  hours, minutes = twenty_four_time.split(':').map {|i| i.to_i}
  if (hours * MINUTES_PER_HOUR % MINUTES_PER_DAY) == 0
    0
  else
    MINUTES_PER_DAY - (hours * 60 + minutes) % MINUTES_PER_DAY
  end
end


p after_midnight('00:00') #== 0
p before_midnight('00:00') #== 0
p after_midnight('12:34') #== 754
p before_midnight('12:34') #== 686
p after_midnight('24:00') #== 0
p before_midnight('24:00') #== 0
