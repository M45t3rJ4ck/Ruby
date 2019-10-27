# Create a text file called "numbers1.txt" that contains Integers.
# Create another text file called "numbers2.txt" which also contains Integers.
# Write the numbers from both files to a third file called "allNumbers.txt"
# All the numbers in "allNumbers.txt" should be sorted from smallest to largest.

anum = ""

File.open("number1.txt", "r") do |file1|
    anum = file1.read + ", "
end

File.open("number2.txt", "r") do |file2|
    anum += file2.read
end

File.open("allNumbers.txt", "w") do |file3|
    file3.print(anum.split(", ").sort)
end

puts("Operation completed")
