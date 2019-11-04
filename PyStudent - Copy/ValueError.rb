print ("Please enter your favourite restaurant: ")
favRest = gets.chomp
print ("Please enter your favourite number: ")
intFav = gets.chomp.to_i

# This code below will fail and provide with an error as a char can't be converted to integer:
puts (favRest.to_i)
