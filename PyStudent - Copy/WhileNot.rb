num = Random.new.rand(1..1001)
print ("Please enter a number: ")
numGuess = gets.chomp.to_i
while numGuess != num
    print ("Please enter another number: ")
    numGuess = gets.chomp.to_i
end
puts ("You guessed correctly!")
