# Bonus task 2:
# Implement a search/replace function recursively
# Sample I/O
# Enter string: hello world
# Enter word to find: llo
# Enter word to replace: @@
# he@@ world

def search_replace
    print ("Enter a string for manipulation: ")
    string = gets.chomp.to_s
    print ("Enter the word to replace: ")
    search = gets.chomp.to_s
    print ("Enter the replacement character: ")
    newWord = gets.chomp.to_s
    words = string.split(" ").to_a
    for word in words.each
        if word == search
            word.replace(newWord)
        else
            puts ("No matching word found.")
        end
    end
    string = words.join(" ").to_s
    puts (string)
end
puts (search_replace)
