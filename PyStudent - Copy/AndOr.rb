puts "Please enter a number: "
user_int = gets.chomp.to_i
num = Random.rand(1..11)
if user_int == num and user_int % 2 == 0
    puts ("True" and "True")
elsif user_int != num and user_int % 2 == 0
    puts ("False" and "True")
else
    puts ("All False!")
end
