# Basic conditions

# I wake up
# if I'm hungry
#   I eat breakfast

# I leave my house
# if it's cloudy
#   I take an umbrella
# otherwise
#   I take sunglasses

# I'm at a restaurant
# if I want to eat meat
#   I order a steak
# otherwise if I want pasta
#   I order spaghetti and meatballs
# otherwise
#   I order a salad
puts "Line 1:"
# Create varialbe
ismale = true
# Basic if statement
if ismale
    puts "You are male."
end
puts "Line 2:"
# Create varialbe
ismalez = false
# Basic if statement
if ismalez
    puts "You are male."
else
    puts "You are female."
end
puts "Line 3:"
# Create varialbe
ismaled = false
istalld = true
# Create if statement
if ismaled and istalld
    puts "You are a tall male."
else
    puts "You are either not tall or not male or both."
end
puts "Line 4:"
# Create varialbe
ismales = true
istalls = false
# Create if statement
if ismales or istalls
    puts "You are a tall male."
else
    puts "You are either not tall or not male or both."
end
puts "Line 5:"
# Create varialbe
ismalez = false
istallz = false
# Create if statement
if ismalez and istallz
    puts "You are a tall male."
elsif ismalez and !istallz
    puts "You are a short male."
elsif !ismalez and istallz
    puts "You are a tall female"
else
    puts "You are a short female."
end
# Create a function to return max number using comparison operator
puts "Line 6:"
def max(num1, num2, num3)
    if num1 >= num2 and num1 >= num3
        return num1
    elsif num2 >= num1 and num2 >= num3
        return num2
    elsif num3 >= num1 and num3 >= num2
        return num3
    else
        return "None of the numbers provided are bigger than the other."
    end
end
# Acquire user input
print "Enter your first number: "
num1 = gets.chomp()
print "Enter your second number: "
num2 = gets.chomp()
print "Enter your third number: "
num3 = gets.chomp()
# Output function
puts max(num1, num2, num3)
