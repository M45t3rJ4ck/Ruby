print ("Please enter a number: ")
num = gets.chomp.to_i
if num > 10
    puts (num.to_s * num)
else
    puts ("Sorry, to small to play along.")
end
