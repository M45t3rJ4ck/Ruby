puts ("Hello World")

# Ask the user to input their name and asign it ot a variable named name:
print ("What is your name? ")
name = gets.chomp.to_s
# Print out Hello followed by the name they entered:
puts ("Hello #{name}")

# Ask the user to input 2 numbers and store them in variables named num1 and num2:
print ("Enter 2 numbers: ")
num1, num2 = gets.chomp.split()
# Convert the strings into regular number integers:
num1 = num1.to_i
num2 = num2.to_i
# Add the values entered and store them in variable named sum:
sum = num1 + num2
# Subtract the values entered and store them in variable named difference:
difference = num1 - num2
# Multiply the values entered and store them in variable named product:
product = num1 * num2
# Divide the values entered and store them in variable named quotient:
quotient = num1 / num2
# Use modulus on the values entered to find the remainder and store them in variable named remainder:
remainder = num1 % num2
# Print results on screen for user:
puts ("#{num1} + #{num2} = #{sum}")
puts ("#{num1} - #{num2} = #{difference}")
puts ("#{num1} * #{num2} = #{product}")
puts ("#{num1} / #{num2} = #{quotient}")
puts ("#{num1} % #{num2} = #{remainder}")

# Problem: Convert Miles into Kilometers:
print ('Enter your Miles completed: ')
miles = gets.chomp
# Convert the string into regular number integers:
miles = miles.to_i
# Convert Miles to Kilometers:
kilometers = miles * 1.60934
# Print result on screen for user:
puts ("Kilometers are #{kilometers}")

# Store the user input of 2 numbers and an operator:
print ("Enter your calculations: ")
num1, operator, num2 = gets.chomp.split(" ")
# Convert strings into integers:
num1 = num1.to_i
operator = operator.to_s
num2 = num2.to_i
# Provide output based on operator:
if operator == "+"
    puts ("#{num1 + num2}")
elsif operator == "-"
    puts ("#{num1 - num2}")
elsif operator == "*"
    puts ("#{num1 * num2}")
elsif operator == "/"
    puts ("#{num1 / num2}")
elsif operator == "%"
    puts ("#{num1 % num2}")
else
    puts ("Use either + - * / % next time please!")
end

# To provide different outputs based on age:
# 1 - 18 = Important:
# 21, 50, 65 = Important:
# All other = Not Important:
# Receive user age and store it as a variable named age:
print ("Enter your age: ")
age = gets.chomp.to_i
# and: if both are true = return true:
# or: if either conditions are true = return true:
# not: convert a true condition to false:
# If age is both greater than or equal to 1 and less or equal to 18 = print message:
if (age >= 1) and (age <= 18)
    puts ("Your Brithday is Important!!")
# If age is either 21 or 50 = print important message:
elsif (age == 21) or (age == 50)
    puts ("You have an Important Birthday!!")
# To check if an age is less than 65 and then convert to false or vise versa:
elsif not (age < 65)
    puts ("Important Birthday Coming up for You!!")
# For every other birthday = print message:
else
    puts ("Not an Important Birthday After all!!")
end

# Age and Grade Test:
print ("Enter Your age: ")
age = gets.chomp.to_i
# If age is <= 5 -> go to kindergarden:
if (age >= 1) and (age <= 5)
    puts ("Go To Kindergarden!!")
# If age is 6 - 18 -> go to grade 1 - 12:
elsif (age >= 6) and (age <= 18)
    grade = age - 5
    puts ("Get Your Ass To Grade #{grade}!!")
# If age is 19 - 25 -> go to college:
elsif (age >= 19) and (age <= 25)
    puts ("Why aren't you in College?!")
# if age is 25+ -> go to work:
else
    puts ("You Lazy Dog...Get To Work!!")
end
