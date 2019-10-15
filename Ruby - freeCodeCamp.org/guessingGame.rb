# Create variable to store secret word
secret_word = "Thalamus"
guess = ""
guess_count = 1
guess_limit = 10
out_of_guesses = false
# Declare loop to keep asking question
while guess != secret_word and !out_of_guesses
    if guess_count <= guess_limit
        print "Enter your guess (" + guess_count.to_s + " of " + guess_limit.to_s + "): "
        guess = gets.chomp()
        guess_count += 1
    else
        out_of_guesses = true
    end
end
# Declare statement when user guessed correctly
if out_of_guesses
    puts "You are out of guesses, you loose!"
else
    puts "You guessed correctly!"
end
