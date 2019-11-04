# Collecting user input:
print ("Please enter the number for the time table you want: ")
tab_num = gets.chomp.to_i

# Defining operations:
puts("The #{tab_num.to_s} times table is: ")
for num in (1..13)
    ans_num = tab_num.to_i * num.to_i
    if num < 13
        puts ("#{tab_num.to_s} x #{num.to_s} = #{ans_num.to_s}.")
    end
end
