# To open file that is in another directory include relative path (/files/readingFiles.txt) then specify mode and store inside variable
# To open file that is in another directory include absolute path (C:/files/readingFiles.txt) then specify mode and store inside variable
# To open file that is in the same directory include file then specify mode and store inside variable
File.open("readingFiles.txt", "r") do |file|
    puts "Line 1:"
    puts file
    puts "Line 2:"
    puts file.read()
    puts file.read().include? "Jim"
    puts "Line 3:"
    puts file.readline()
    puts "Line 4:"
    puts file.readlines()
    puts "Line 5:"
    puts file.readlines()[2]
    puts "Line 6:"
    puts file.readchar()
    puts "Line 7:"
    for line in file.readlines()
        puts line
    end
end
# Shorthand method - must be closed manually
file = File.open("readingFiles.txt", "r")
puts file.read
file.close()
