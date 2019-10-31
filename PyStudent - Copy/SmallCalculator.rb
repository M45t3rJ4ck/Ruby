# Write a program that will act as a calculator.
# Create functions named addNum, subtractNum, multiplyNum and divideNum that asks the user to enter 2 numbers and adds, subtracts, multiplies or divides them
# respectively.
# Print out the following menu and ask the user to input a number that corresponds to the option they would like to choose:
#       Option 1 - add
#       Option 2 - subtract
#       Option 3 - multiply
#       Option 4 - divide
# If the user enters 1 call the addNum function
# If the user enters 2 call the subtractNum function
# If the user enters 3 call the multiplyNum function
# If the user enters 4 call the divideNum function
# Make sure that the result of the caluation is printed out to the screen.


def print_menu()
    puts ("1. Add numbers")
    puts ("2. Subtract numbers")
    puts ("3. Multiply numbers")
    puts ("4. Devide numbers")
    puts ("5. Quit")
end

def addNum(num1, num2, num3)
    num3 = num1 + num2
    return (num3).to_s
end

def subNum(num1, num2, num3)
    num3 =  num1 - num2
    return (num3).to_s
end

def mulNum(num1, num2, num3)
    num3 = num1 * num2
    return (num3).to_s
end

def divNum(num1, num2, num3)
    num3 = num1 / num2
    return (num3).to_s
end

print ("Enter 1st number for calculations: ")
num1 = gets.chomp.to_f
print ("Enter 2nd number for calculations: ")
num2 = gets.chomp.to_f
num3 = ().to_f

print_menu()
menu_choice = 0

while menu_choice != 5
    print ("Please enter a number between 1 and 5: ")
    menu_choice = gets.chomp.to_i
    if menu_choice == 1
        puts (addNum(num1, num2, num3))
    elsif menu_choice == 2
        puts (subNum(num1, num2, num3))
    elsif menu_choice == 3
        puts (mulNum(num1, num2, num3))
    elsif menu_choice == 4
        puts (divNum(num1, num2, num3))
    else
        exit()
    end
end
