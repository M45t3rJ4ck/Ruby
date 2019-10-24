# Now write code to take the name of a users favourite restaurant and store it in a variable called favRest
# Now, below this, write a statement to take in the users favourite number. 
# Use casting to store it in a variable called intFav
# Now print out both of these using two separate print statements below what you have written.
# Now, once this is working, try cast favRest to an int. 
# What happens? Add a comment in your code to explain why this is.

# Ask user for restaurant
puts ("Please enter your favourite restaurant: ")
favRest = gets.chomp

# Ask user for numbers
puts ("Please enter your favourite number: ")
intFav = gets.chomp

# Print out inputs
puts ("Your favourite kitchen is: #{favRest}!")
puts ("Your lucky number is: #{intFav}")

# Cast to int
if favRest == favRest.to_i
    puts ("It works!")
elsif favRest != favRest.to_i
    puts ("It didn't work...")
else
    puts ("You were right!")
end
