# FUNCTION BASICS:
# To reduce code and improve understanding:
# puts "Enter a Number: "
num1 = gets.chomp.to_i
# puts "Enter another Number: "
num2 = gets.chomp.to_i
def add_name(num1, num2)
    # Return values if needed:
    return num1 + num2
end
# Call function by name followed by comma:
# print("#{num1} + #{num2} = #{add_name(num1, num2)}")

# FUNCTION VARIABLES:
# Any variable defined inside a function is only available in that function:
# EXAMPLE 1:
# Varialbes created inside function isn't useable outside of it:
def assign_name()
    name = "Dog"
end
assign_name()
# print(name)

# EXAMPLE 2:
# Unable to change global settings when passed into a function:
def change_name(name)
    #Trying to change Tom
    name = "Mark"
end
# Variable defined outside function can't be change the variable inside the function:
name = "Tom"
# Trying to change values:
change_name(name)
# Print name:
# print(name)

# EXAMPLE 3:
# To change value pass it back:
def change_name_2()
    return "Mark"
end
name = change_name_2()
# print(name)

# EXAMPL 4:
# Use of global statement to change it:
$gbl_name = "Sally"
def change_name_3(gbl_name)
    $gbl_name = "Sammy"
end
change_name_3($gbl_name)
print($gbl_name)

# RETURNING CODE:
# If you don't return a value, a fundtion will return NONE:
puts "Enter a Number: "
num1 = gets.chomp.to_i
puts "Enter another Number: "
num2 = gets.chomp.to_i
def get_sum(num1, num2)
    sum = num1 + num2
end
print("#{get_sum(num1, num2)}")

# PROBLEM - SOLVE X:
# Make a function to solve X (X + 4 = 9):
# X to be first value received and you to deal with addition:
# Receive a string and split into variables:
puts "To Solve x + num1 = answ"
puts "Enter a Number 1: "
num1 = gets.chomp.to_i
puts "Enter Answer: "
num2 = gets.chomp.to_i
def equa_change(num1, num2)
    # Convert it into a string and join to "X = ":
    return "x = #{num2 - num1}"
end
# Print():
print("#{equa_change(num1, num2)}")

# RETURN MULTIPLE VALUES:
# By using a return statement:
puts "Enter a Number: "
num1 = gets.chomp.to_i
puts "Enter another Number: "
num2 = gets.chomp.to_i
def mult_divide(num1, num2)
    num1 * num2 = mult
    num1 / num2 = divide
    return "#{num1} * #{num2} = #{mult} \n #{num1} / #{num2} = #{divide}"
end
print(mult_divide(num1, num2))

# RETURN A LIST OF PRIMES:
# A prime can only be divided by itself and 1:
# if modulus == 0 -> number isn't prime:
print "Search for primes up to: "
max_num_to_check = gets.chomp.to_i
def isprime(num)
    # Cycle with for loop (from 2 to value to check):
    for i in (2..num)
        # if a divsion has no remainder -> not prime:
        if (num % i) == 0
            return false
        else
            return true
        end
    end
end
def getprime(max_num_to_check)
    # Create a list to hold primes:
    list_of_primes = []
    # Cycle with for loop (from 2 to max value requested):
    for num in (2..max_num_to_check)
        if isprime(num)
            list_of_primes.append(num)
        end
    end
    return list_of_primes
end
puts (getprime(max_num_to_check))

# UNKNOWN NUMBER OF ARGUMENTS:
# *->receive unknown number of arguments:
print "Enter a number to start from: "
$num1 = gets.chomp.to_i
print "Enter a number to end at: "
$num2 = gets.chomp.to_i
def sumAll(**args)
    sum = 0
    args = ($num1..$num2)
    for i in args
        sum += i
    end
    return "Sum = #{sum}"
end
print(sumAll())

# Module needed to continue:
# Function to avoid duplicate coding:
# OUR FUNCTIONS:
# Routs to the correct area function:
def get_area(shape)
    # Switch to lowercase for easy comparison:
    shape = shape.downcase
    if shape == "rectangle"
        rectangle_area()
    elsif shape == "circle"
        circle_area()
    else
        print ("Please enter rectangle or circle: ")
    end
end
# Create functions for areas:
def rectangle_area()
    puts ("Enter the length: ")
    length = gets.chomp.to_f
    puts ("Enter the width: ")
    width = gets.chomp.to_f
    area = length * width
    print ("The area of the rectangle is: #{area}")
end
def circle_area()
    puts ("Enter the radius: ")
    radius = gets.chomp.to_f
    area = (Math::PI) * (radius ** 2)
    print ("The area of the circle is #{area.round(2)}")
end
# Placing main programming logic in functions:
def main()
    # Ask the user what shape they have:
    puts ("Get area for what shape: ")
    shape_type = gets.chomp.to_s
    # Call a function to route to correct function:
    get_area(shape_type)
end
# All definitions ignored and calls main() to start:
main()
