# Get user input:
print ("Please enter any 3 numbers seperates by a comma: ")
num1, num2, num3 = gets.chomp.split(",")
# Define integers:
num1 = num1.to_i
num2 = num2.to_i
num3 = num3.to_i
# Declare operations:
sum = num1 + num2 + num3
subtract = num1 - num2
multi = num3 * num1
div = (num1 + num2 + num3) / num3
# Print out operations:
puts (sum)
puts (subtract)
puts (multi)
puts (div)
