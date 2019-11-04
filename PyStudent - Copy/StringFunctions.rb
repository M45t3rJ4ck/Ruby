# STRING METHODS:
# Many various methods:
rand_string = "   this is an important string   "
# Delete white spaces on left:
rand_string = rand_string.lstrip
# Delete white spaces on right:
rand_string = rand_string.rstrip
# Delete all white spaces:
rand_string = rand_string.strip
# Capitalize the 1st letter:
puts (rand_string.capitalize)
# Capitalize every letter:
puts (rand_string.upcase)
# Lowercase all letters:
puts (rand_string.downcase)
# Turn a list into a string:
a_list = ["Bunch", "of", "random", "words"]
puts (a_list.join(" "))
# Convert a list into a string:
a_list_2 = rand_string.split
for i in a_list_2
    puts (i)
end
# Count how many times a string occurs:
puts ("How many is are there: #{rand_string.count("is")}")
# Get index of matching string:
puts ("Where is string: #{a_list_2.find("string").to_s}")
# Replace a substring:
puts (rand_string.gsub!("an", "a kind of"))

# PROBLEM -> ACRONYM GENERATOR:
# Convert a string in uppercase acronym:
print ("Enter a sentence: ")
user_string = gets.chomp.to_s
# Convert string into uppercase:
a_string = user_string.upcase
# Convert string into a list:
a_list = a_string.split
# Cycle through the list:
for word in a_list
    # Get the 1st character and eliminate the rest:
    puts (word[0])
end

# USEFUL STRING METHODS:
letter_z = "z"
num_3 = "3"
a_space = " "
# Return True for letters or numbers, white space is false:
regex1 = /[[:alnum]]/
puts ("is z a letter or number: #{regex1}")
# Return True for letters:
regex2 = /[[:alpha:]]/
puts ("Is z a letter: #{regex2}")
# Return True for numbers, floats are false:
regex3 = /[[:digit:]]/
puts ("Is 3 a number: #{regex3}")
# Return True for lowercase:
regex4 = /[[:lower:]]/
puts ("Is z in lowercase: #{regex4}")
# Return True for uppercase:
regex5 = /[[:upper:]]/
puts ("Is z in uppercase: #{regex5}")

# MAKE USE OF AN ISFLOAT:
# Functions allow use to avoid repeating code:
def isfloat(str_val)
    begin
    # Will throw ValueError if not a float:
        str_val.to_f
    # If value found return:
        return true
    rescue ValueError
        return False
    end
end
pi = 3.14
puts ("Is pi a float: #{isfloat(pi)}")

# PROBLEM -> CEASAR'S CIPHER:
# User to input a message:
print ("Enter your message now: ")
message = gets.chomp.to_s
print ("Enter amount characters to shift with: ")
s_amount = gets.chomp.to_i
# Convert message into unicode:
secret = " "
# Cycle through each character:
for char in message.each_char
    regex6 = /[[:alpha:]]/
    # If isn't a letter, keep it as is:
    if regex6.match(char)
        # Get character and shift amount:
        char_code = (char.ord + s_amount).to_i
        # If uppercase, compare to uppercase unicodes:
        regex7 = /[[:upper:]]/
        if regex7.match(char)
            # Bigger than Z - 26:
            if char_code > ("Z").ord.to_i
                char_code -= 26
            # Smaller than A + 26:
            elsif char_code < ("A").ord.to_i
                char_code += 26
            end
        # Do the same for lowercase:
        else
            if char_code > ("z").ord.to_i
                char_code -= 26
            elsif char_code < ("a").ord.to_i
                char_code += 26
            end
        # Convert letters:
        secret += char_code.to_i.chr
        end
    # If not a letter leave as is:
    else
        secret += char
    end
end
puts ("Encrypted message: #{secret}")
# To reverse the message:
orig_message = ""
for char in secret.each_char
    regex8 = /[[:alpha:]]/
    # If isn't a letter, keep it as is:
    if regex8.match(char)
        # Get character and shift amount:
        char_code = (char.ord + s_amount).to_i
        regex9 = /[[:upper:]]/
        # If uppercase, compare to uppercase unicodes:
        if regex9.match(char)
            # Bigger than Z - 26:
            if char_code > ("Z").ord.to_i
                char_code -= 26
            # Smaller than A + 26:
            elsif char_code < ("A").ord.to_i
                char_code += 26
            end
        # Do the same for lowercase:
        else
            if char_code > ("z").ord.to_i
                char_code -= 26
            elsif char_code < ("a").ord.to_i
                char_code += 26
            end
        # Convert letters:
        orig_message += char_code.to_i.chr
        end
    # If not a letter leave as is:
    else
        orig_message += char
    end
end
puts ("Decrypted message: #{orig_message}")
