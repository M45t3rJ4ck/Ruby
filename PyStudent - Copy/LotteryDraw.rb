print ("Please enter your 1st number for the lottery: ")
num1 = gets.chomp.to_i
print ("Please enter your 2nd number for the lottery: ")
num2 = gets.chomp.to_i
randnum = Random.new.rand(10..100)
strong_mtch = num1 & num2
revers_mtch = num2 & num1
weak_mtch = num1 || num2
if strong_mtch == randnum
    puts ("Congratulations you have an exact match, you win R10 000.00")
elsif revers_mtch == randnum
    puts ("Congratulations you have all digits, you win R5 000.00")
elsif weak_mtch == randnum
    puts ("Congratulations you have one correct digit, you win R1 000.00")
else
    puts ("Sorry no match")
end
puts randnum
