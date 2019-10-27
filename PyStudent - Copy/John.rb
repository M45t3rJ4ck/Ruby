# While the String is not “John”, add every String entered to a  list until “John” is entered.
# Then print out the list.
# This program basically stores all incorrectly entered Strings in a list where “John” is the only correct String.
# Example program run:
#       Enter your name : <user enters Tim>  
#       Enter your name : <user enters Mark>  
#       Enter your name: <user enters John>  
#       Incorrect names: [‘Tim’, ‘Mark’]

name = "John"
names = []
print ("Please enter a name: ")
in_name = gets.chomp.to_s
while in_name != name
    names.append(in_name)
    print ("Please enter a name: ")
    in_name = gets.chomp.to_s
    names.append(in_name)
    if in_name == name
        print("Incorrect Names: ", names)
    end
end
