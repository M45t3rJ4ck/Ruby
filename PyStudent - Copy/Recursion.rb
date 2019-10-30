# Now that you have read and understood example.py, write recursive functions for the following tasks. 
# Write all of the recursive functions in a file called “recursion.rb”:

# Reverse a string:
puts ("1.) Reverse...")
print ("Enter your string: ")
esrever = gets.chomp.to_s
def reverse(esrever)
    reverse = esrever[-1..0]
    return reverse
end
puts (reverse(esrever))

# Find the factorial of an integer (factorial (5) = 5 x 4 x 3 x 2 x 1):
puts ("2.) Factorial...")
print ("Enter a number to start Factorial Calculations: ")
n = gets.chomp.to_i

def factorial(n)
    if n <= 1
        return 1
    else
        calc = n * factorial(n - 1)
        puts ("Calculating factorial #{n} of #{(n - 1)}: #{calc}.")
        return calc
    end
end
puts (factorial(n))

# Calculate the nth Fibonacci number (Fibonacci numbers are a sequence where each number is the sum of the previous two - 0 1 1 2 3 5 8 etc.):
puts ("3.) Fibonacci... ")
print ("Enter a number to start Fibonacci sequence: ")
n = gets.chomp.to_i

def fibonacci(n)
    if n == 0
        return 0
    elsif n == 1
        return 1
    else
        result = fibonacci(n - 1) + fibonacci(n - 2)
        return result
    end
end
puts (fibonacci(n))
