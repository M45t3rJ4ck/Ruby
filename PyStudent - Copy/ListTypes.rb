# Imagine you want to store the names of three of your friends in a list of Strings.
# Create a list variable called friends_names, and write the syntax to store the full names of three of your friends.
# Now write a statement to print out the name of the first friend, then the name of the last friend, and finally the length of the list.
# Now define a list called friends_ages, that stores the age of each of your friends in a corresponding manner.
# i.e. the first entry of this list is the age of the friend named first in your other list.

friends_name = []
friends_age = []

while friends_name.length != 3
    print ("Please enter your name and surname: ")
    full_names = gets.chomp
    friends_name.append(full_names)

    print ("Please enter there age: ")
    age = gets.chomp
    friends_age.append(age)
end

if friends_name.length == 3
    puts ("Your first friends name is #{friends_name[0]}.")
    puts ("Your last friends name is #{friends_name[-1]}.")
    puts ("The total number of friends you have is #{friends_name.length}.")
end

