# A prime number is a positive integer greater than 1, whose only factors are 1 and the number itself.
# Examples of prime numbers are: 2, 3, 5, 7, etc.
# Ask the user to enter an integer.
# First check if the number is greater than 1.
# If it is greater than 1, check to see if it has any factors besides one and itself.
# i.e if there are any numbers between 2 and the number itself that can divide the number without any remainders 
# If the number is a prime number, print out the number and ' is a prime number!'
# If the number is not a prime number, print out the number and ' is not a prime number'

print ("Please enter a number to check if it is prime: ")
userPrime = gets.chomp.to_i
primed = ()

for x in (2..userPrime)
    if (x % 2) == 0
        primed = "#{userPrime.to_s} isn't a prime number.\n"
    else
        primed = "#{userPrime.to_s} is a prime number.\n"
    end
end

puts (primed)
