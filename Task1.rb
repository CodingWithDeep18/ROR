EXPECTED_MINUTES_IN_OVEN = 40
CONSTANT_TWO=2
class Lasagna
 

  def remaining_minutes_in_oven(time)
     return EXPECTED_MINUTES_IN_OVEN - time
  end
  def preparation_time_in_minutes(layer)
      return layer*CONSTANT_TWO
  end 
  def total_time_in_minutes(layer,time)
      result= remaining_minutes_in_oven(time) + preparation_time_in_minutes(layer)
      puts "#{result}"
  end
end
lasagna=Lasagna.new
lasagna.total_time_in_minutes(3,20)
