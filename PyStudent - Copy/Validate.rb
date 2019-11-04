print ("Please enter your favourite number: ")
numStr = gets.chomp.to_s
numInt1 = ("3").to_s
numInt2 = ("2").to_s
if numStr == numInt1
    puts ("You're in luck...it was 3!")
elsif numStr == numInt2
    puts ("You're still in luck...it was 2!")
else
    puts ("User must enter a correct number!!")
end
