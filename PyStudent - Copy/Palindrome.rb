# Create a program that determines whether a String is a palindrome.
# A palindrome is a string which reads the same backwards as forward.
# Some examples of palindromes are: racecar, dad, level and noon
# Ask the user to enter a word and check if that word is a palindrome.
# If it is a palindrome, print out 'Your word is a palindrome'.
# If it is not a palindrome, print out 'Your word is not a palindrome'.

print ("Please enter your word for evaluation: ")
userPalin = gets.chomp
palinUser = userPalin.reverse
if userPalin == palinUser
    puts ("You're word is a palindrome!")
else
    puts ("You're word isn't a palindrome!")
end