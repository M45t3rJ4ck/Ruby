# Acquire number from user
print "Enter the first number: "
num1 = gets.chomp()
# Acquire number from user
print "Enter the second number: "
num2 = gets.chomp()
# Output numbers to console
puts (num1 + num2)
# Convert numbers from string to integer and then output to console
puts (num1.to_i + num2.to_i)
# Convert numbers from string to floats and then output to console
puts (num1.to_f + num2.to_f)

# Shorter method
# Acquire number from user
print "Enter the first number: "
numz1 = gets.chomp().to_f
# Acquire number from user
print "Enter the second number: "
numz2 = gets.chomp().to_f
# Output numbers to console
puts (numz1 + numz2)