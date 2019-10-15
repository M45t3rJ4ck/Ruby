# Declare array to loop through
friends = ["Mario", "Luigi", "Bowser", "Princess", "Mushrooms"]
# Declare standard for loop to loop through array
puts "Line 1:"
for friend in friends
    puts friend
end
puts "Line 2:"
# Declare shorthand for loop to loop through array
friends.each do |friend|
    puts friend
end
puts "Line 3:"
# Declare standard loop range and number of times to loop through
for index in 0..5
    puts index
end
puts "Line 4:"
# Declare shorthand loop range and number of times to loop through
6.times do |index|
    puts index
end
