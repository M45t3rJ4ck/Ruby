# Program to count characters, words, line and vowels from file:
# Open and indicate file and location
File.open("input.txt", "r") do |f|
    # Defining variable holders
    linenum = 0
    crcount = 0
    file = ""
    # deining operation
    for line in f
        linenum += 1
        file += line.split("\n").join("")
    end
    puts (linenum)
    for chr in file.split("")
        crcount += 1
    end
    puts (crcount)
end
