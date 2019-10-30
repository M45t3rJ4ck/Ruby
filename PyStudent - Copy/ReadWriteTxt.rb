# We are able to store data for later use in files.
# You can create or use an already created file with open.
# Use w(write) for mode,  then the file is overwritten.
# If you use a(append) you add to the end of the file.
# Text is stored using unicode where numbers represent all possible characters.
# We start the code with with which guarantees the file will be closed if the program crashes.
File.open("mydata.txt", "w") do |myFile|
    # You can write to the file with write:
    # It doesn't add a newline:
    myFile.write("Some random text\nMore random text\nAnd some more")
end
# Open the file for reading:
# You don't have to provide a mode because it is read by default:
File.open("mydata.txt") do |myFile1|
    # We can read data in a few ways:
    # 1. read()          = reads everything into 1 string.
    # 2. readline()   = reads everything including the first newline.
    # 3. readlines() = returns a list of every line which includes.
    # each newline.
    # Use read() to get everything at once:
    puts (myFile1.read())
end

# ---------- PROBLEM : Fibonacci sequence ----------
# Previously we generated 1 number in the Fibonacci sequence.
# This time ask the user to define how many numbers they want and display them.
# The formula for calculating the Fibonacci sequence is Fn = Fn-1 + Fn-2.
# Where F0 = 0 and F1 = 1
# Sample Output
=begin
How many Fibonacci values should be found : 30
1
1
2
3
5
All Done
=end
def fib(num)
    if num == 0
        return 0
    elsif num == 1
        return 1
    else
        result = fib(num - 1) + fib(num - 2)
        return result
    end
end
print ("How many Fibonacci values should be found : ")
numFibValues = gets.chomp.to_i
i = 1
# While i is less then the number of values requested continue to find more:
while i < numFibValues
    # Call the fib()
    fibValue = fib(i)
    puts (fibValue)
    i += 1
end
puts ("All Done")


# ---------- READ ONE LINE AT A TIME ----------
# You can read 1 line at a time with readline():
# Open the file:
File.open("mydata.txt", "r") do |myFile|
    lineNum = 0
    line = myFile.read
    # We'll use a while loop that loops until the data read is empty:
    for line in myFile
        puts ("Line #{lineNum}: #{line}")
        lineNum += 1
    end
end

# ---------- PROBLEM : ANALYZE THE FILE ----------
# As you cycle through each line output the number of
# words and average word length
=begin
Line 1
Number of Words : 3
Avg Word Length : 4.7
Line 2
Number of Words : 3
Avg Word Length : 4.7
=end
File.open("mydata.txt") do |myFile|
    lineNum = 1
    line = myFile.read
    for line in myFile
        puts ("Line #{lineNum}")
        # Put the words in a list using the space as the boundary between words:
        wordList = line.split()
        # Get the number of words with len()
        puts ("Number of Words : #{wordList.length}")
        # Incremented for each character:
        charCount = 0
        for word in wordList.each
            for char in word.each
                charCount += 1
            end
        end
        # Divide to find the answer:
        avgNumChars = charCount/(wordList.length)
        # Use format to limit to 2 decimals:
        puts ("Avg Word Length : #{avgNumChars.round(2)}")
        lineNum += 1
    end
end

# ---------- LISTS ----------
myTuple = [1, 2, 3, 5, 8]
# Get a value with an index:
puts ("1st Value: #{myTuple[0]}")
# Get a slice from the 1st index up to but not including the 3rd:
puts (myTuple[0..3])
# Get the number of items in a Tuple:
puts ("Tuple Length: #{myTuple.length}")
# Join or concatenate tuples:
moreFibs = myTuple.append(13, 21, 34)
# Check if a value is in a Tuple:
puts ("34 in Tuple: #{moreFibs.find(34).to_s}")
# Iterate through a tuple:
for i in moreFibs
    print(i)
end
