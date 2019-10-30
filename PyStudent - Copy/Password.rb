# Identify correct password:
password = "rusty"
passList = []
incorrPass = File.open("wrongpasswords.txt", "w")
attempts = 0
countDifference = 0

# Collecting user input:
print ("Please enter your password: ")
userPassword = gets.chomp
if userPassword != password
    passList.append(userPassword)
    attempts += 1
    countDifference = userPassword.length - password.length
    incorrPass.write("Incorrect password #{attempts.to_s}: #{passList[attempts-1].to_s} wrong by #{countDifference} characters.\n")
    while userPassword != password
        print ("Please enter your password: ")
        userPassword = gets.chomp
        passList.append(userPassword)
        attempts += 1
        countDifference = userPassword.length - password.length
        incorrPass.write("Incorrect password #{attempts.to_s}: #{passList[attempts-1].to_s} wrong by #{countDifference} characters.\n")
        if userPassword == password
            puts ("Success! Wrong password text updated.")
        end
    end
end
incorrPass.close()
