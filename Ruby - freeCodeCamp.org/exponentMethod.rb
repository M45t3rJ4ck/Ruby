# Declare variables
puts "Line 1:"
print "Enter your first number: "
num1 = gets.chomp().to_f
print "Enter the power to number: "
num2 = gets.chomp().to_f
# Declare method 
def exponent(num1, num2)
    return num1 ** num2
end
# Output code to console
puts exponent(num1, num2)
puts "Line 2:"
# Declare variables
puts "Enter your base number: "
base_num = gets.chomp().to_i
puts "Enter your power number: "
pow_num = gets.chomp().to_i
# Declare function
def pow(base_num, pow_num)
    result = 1
    pow_num.times do |index|
        result = result * base_num
    end
    return result
end
puts pow(base_num, pow_num)
