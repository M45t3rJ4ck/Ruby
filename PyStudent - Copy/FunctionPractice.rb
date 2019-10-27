#   Inside it, create a function called 'addthree', that takes as input three parameters - num1, num2, num3.
#   Then, write logic to create a new variable, y, that is the sum of all three of these numbers.
#   Then, return the result y.
#   Now, after you've defined this function, write a function call to return the sum of the numbers 52, 25, and 1403.
#   Store this result in a variable called sumFunc.
#   Print out sumFunc. Don't forget to cast to a String!

puts ("You will be asked for 3 numbers")
print ("Please enter the 1st number: ")
num1 = gets.chomp.to_i
print ("Please enter the 2nd number: ")
num2 = gets.chomp.to_i
print ("Please enter the 3rd number: ")
num3 = gets.chomp.to_i

def addthree(num1, num2, num3)
    nums = num1 + num2 + num3
    return "#{nums}"
end
puts ("The sum of your numbers are: #{addthree(num1, num2, num3)}")

num_s = [52, 25, 1403]
def sumFunc(num_s)
    sumFunc = num_s.sum
    return sumFunc
end
puts ("sumFunc output: #{sumFunc(num_s)}")
