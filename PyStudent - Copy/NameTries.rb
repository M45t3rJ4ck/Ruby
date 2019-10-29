# Edit the above program to allow the user to enter an integer before they enter the name.
# This  integer defines how many ‘tries’ the user will get to enter the right name.
# If the user exceeds the number of tries, the program must stop. 

name = "John"
names = []
tries = 0
inName = ""
print ("Please enter a number: ")
inTry = gets.chomp.to_i

while inName != name && inTry != tries
    print ("Please enter a name: ")
    inName = gets.chomp.to_s
    names.append(inName)
    tries += 1
    if inName == name
        puts ("Incorrect Names: #{names}")
    elsif inTry == tries
        exit()
    end
end
