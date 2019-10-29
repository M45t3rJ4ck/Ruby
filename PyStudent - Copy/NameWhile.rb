# Defining containers:
names = []
name = "hyper"
nameCount = 0
userName = ""

# Collecting user input:
while userName != name
    print ("Please enter a name: ")
    userName = gets.chomp.to_s
    names.append(userName)
    nameCount += 1
    if userName == name
        puts (nameCount)
    elsif nameCount == 10
        exit()
    end
end
