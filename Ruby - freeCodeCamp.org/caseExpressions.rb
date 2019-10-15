# Declare function to return weekday names
def get_day_names(day)
    day_name = ""
    case day 
    when "Mon"
        day_name = "Monday"
    when "Tue"
        day_name = "Tuesday"
    when "Wed"
        day_name = "Wednesday"
    when "Thu"
        day_name = "Thursday"
    when "Fri"
        day_name = "Friday"
    when "Sat"
        day_name = "Saterday"
    when "Son"
        day_name = "Sonday"
    else
        day_name = "Your input was not correct, try again."
    end
    return day_name
end
# Acquire user input
print "What day of the week are you looking for? "
day = gets.chomp()
puts get_day_names(day)