# We will write a program that allows students to register for an exam venue.
# First ask the user how many students are registering.
# Create a for loop that runs for that amount of students
# Each loop asks for the student to enter their ID numbers.
# Write each of the ID numbers to a Text File called “RegForm.txt”
# This will be used as an attendance register that they will sign when they arrive at the exam venue

File.open("RegForm.txt", "a") do |file|
    print ("How many students are registering: ")
    indnum = gets.chomp.to_i
    fname = ""
    lname = ""
    idNum = ""
    sSign = ("Sign:_________")
    studnum = 0
    while studnum != indnum
        print ("Please enter your name and surname: ")
        fname, lname = gets.chomp.split(" ")
        print ("Please enter your ID number: ")
        idNum = gets.chomp.to_s
        student = [fname, lname, idNum, sSign]
        file.write("#{student.to_s}\n")
        studnum += 1
    end
    if studnum == indnum
        puts("\nRegistration completed")
    end
    file.close()
end