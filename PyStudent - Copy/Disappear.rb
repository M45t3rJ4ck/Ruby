# Ask the user to input a string and then ask the user which characters they would like to make disappear.                                                                                                            
# For example: The quick brown fox jumps over the lazy dog.                                                                                      
# After stripping a,e,i,o,u                                                                                                         
# Th qck brwn fx jmps vr th lzy dg.  

# Acquiring user input:
print ("Please enter a sentence to manipulate: ")
u_in = gets.chomp.split(" ")
print ("Please enter the characters to remove, seperated by a whitespace: ")
u_out = gets.chomp.split(" ")

wordArr = []
result = ""

for word in u_in
    wordArr = word.split("")
    for chr in wordArr
        for target in u_out
            if chr == target
                wordArr.delete(chr)
            end
        end
    end
    wordArr = wordArr.join("")
    result += (wordArr + " ")
end

puts (result)
