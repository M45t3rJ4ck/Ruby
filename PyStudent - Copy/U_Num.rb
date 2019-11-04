# Collecting user input:
print("Please enter a number above a 100: ")
userNum = gets.chomp.to_i

# Defining operation:
while userNum >= 100
    print ("I ment enter a number less than 100: ")
    userNum = gets.chomp.to_i
    if userNum % 2 == 0
        puts (userNum.to_i * 2)
    else
        puts (userNum.to_i * 3)
    end
end
