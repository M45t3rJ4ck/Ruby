puts ("Please enter your age: ")
age = gets.chomp.to_i
if age >= 18
    puts ("You're old enough")
elsif age >= 16
    puts ("You're almost there")
else
    puts ("You're just to young")
end
