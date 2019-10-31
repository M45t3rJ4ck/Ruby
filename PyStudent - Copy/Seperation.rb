# Write a program which inputs a sentence and displays each word of the sentence on a separate line.

print ("Please enter a sentence: ")
usep = gets.chomp
sep = Array.new(usep.split(" "))
for word in sep
    puts (word)
end
