# Collecting user input
print ("Please enter the year to start from: ")
startYear = gets.chomp.to_i
print ("For how many years do you want to check: ")
checkYear = gets.chomp.to_i
leap = startYear % 4

# Defining operations
for num in (startYear..checkYear)
    if startYear % 4 != 0
        puts ("#{startYear} isn't a leap year")
        startYear += 1
    elsif startYear % 4 == 0
        puts ("#{startYear} is a leap yr")
        startYear += 1
    end
end
