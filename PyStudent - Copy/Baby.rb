puts ("!!Welcome To The Party!!")
puts ("Please entr your age: ")
age = gets.chomp.to_i
if age < 18
    puts ("You're not old enough")
elsif age >= 18
    puts ("You're old enough!")
else
    puts ("You sound drunk already!")
end
