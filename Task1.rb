require 'date'
class Calculate
  def calculate(date_of_brith)
    birthdate = dob
    now = DateTime.now
    #years
    years = now.year - birthdate.year
    #months
    months = now.month - birthdate.month
    #days
    days = now.day - birthdate.day
    #hours
    hours = now.hour - birthdate.hour
    #minutes
    minutes = now.min - birthdate.min
    
    if minutes < 0
      hours -= 1
      minutes += 60
    end
    
    if hours < 0
      days -= 1
      hours += 24
    end

    if days < 0
      months -= 1
      last_month = now.next_month.prev_day
      days += (last_month.day - birthdate.day + now.day)
    end

    if months < 0
     years -= 1
      months += 12
    end

    puts "Age: #{years} years, #{months} months, #{days} days, #{hours} hours, #{minutes} minutes"
  end
end

a1 = Calculate.new
date_of_birth = DateTime.new(2002,06,07,4,5)
a1.calculate(date_of_birth)
