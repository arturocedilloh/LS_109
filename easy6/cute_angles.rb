DEGREE = "\x00\xB0"
def dms(angle)
  degrees = angle.to_i.truncate % 60
  minutes = (angle.remainder(1) * 60).round(2)
  seconds = ((minutes.remainder(1) * 60).round(2).truncate) % 60
  minutes = minutes.truncate % 60
  puts "#{degrees} #{minutes}' #{seconds}"
  puts format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

 dms(30) #== %(30°00'00")
 dms(76.73) #== %(76°43'48")
 dms(254.6) #== %(254°36'00")
 dms(93.034773) #== %(93°02'05")
 dms(0) #== %(0°00'00")
 dms(360) #== %(360°00'00") || dms(360) == %(0°00'00")
