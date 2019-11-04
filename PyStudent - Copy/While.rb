# Defining containers
nums = []
sumNums = 0

# Colleting user input
print ("Please enter a number: ")
userNum = gets.chomp.to_i
nums.append(userNum.to_s)
while userNum != -1
    nums.append(userNum)
    for num in nums
        sumNums += num.to_i
    end
    avg_nums = sumNums / nums.length
    print ("Please enter a number: ")
    userNum = gets.chomp.to_i
    if userNum == -1
        puts (avg_nums)
    end
end
