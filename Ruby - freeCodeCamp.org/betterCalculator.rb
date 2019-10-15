# Acquire user input
print "Enter your first number: "
num1 = gets.chomp().to_f
print "Enter the mathematical operator to use:"
mathop = gets.chomp()
print "Enter the second number: "
num2 = gets.chomp().to_f
# Declare method to impliment
def calc(num1, mathop, num2)
    if mathop == "+"
        return num1 + num2
    elsif mathop == "-"
        return num1 - num2
    elsif mathop == "*"
        return num1 * num2
    elsif mathop == "/"
        return num1 / num2
    else
        return "I did not recognize your input, please try again."
    end
end
puts calc(num1, mathop, num2)