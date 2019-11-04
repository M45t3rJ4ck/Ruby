# Get user input:
print ("Please enter the 3 side of your triangle, separated by a space: ")
side1, side2, side3 = gets.chomp.split(" ")

# Define Operations:
sides = (side1.to_f + side2.to_f + side3.to_f) / 2

# Print Operations:
puts ("#{sides.round(2)}")
