print ("Please enter a number: ")
numVar = gets.chomp.to_i
if numVar != 10
    if numVar >= 11
        puts (numVar)
    elsif numVar <= 9
        puts ("You're to small to play along!")
    end
elsif numVar == 10
puts ("!!MY MONEY MAKER!!")
end
