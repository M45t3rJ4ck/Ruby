# Regular expressions allow you to locate and change strings in very powerful ways.
# They work in almost exactly the same way in every programming language as well.
# Regular Expressions (Regex) are used to:
# 1. Search for a specific string in a large amount of data.
# 2. Verify that a string has the proper format (Email, Phone #).
# 3. Find a string and replace it with another string.
# 4. Format data into the proper form for importing for example import the Regex module.

# ---------- Was a Match Found ----------
# Search for ape in the string:
if /ape/ =~ "The ape was at the apex"
    puts ("There is an ape")
end

# ---------- Get All Matches ----------
# find all and return a list of matches . is used to match any 1 character or space:
allApes = ("The ape was at the apex")
regex = /ape/i
apes = Array.new(allApes.split(" "))
results = {}
apes.length do |word|
    if regex =~ word
        results.store(regex)
    end
    puts (results)
end

# find and return an iterator of matching objects and get the location:
theStr = "The ape was at the apex"
regex1 = /ape/i
strArr = Hash.new(theStr.split(" "))
locTuple = {}
strArr.length do |word, index|
    # Slice the match out using the tuple values:
    for word in arrStr
        if regex1 =~ word
            locTuple.store(index, word)
        end
    end
    puts (locTuple)
end

# ---------- Match 1 of Several Letters ----------
# Square brackets will match any one of the characters between the brackets not including upper and lowercase varieties unless they are listed.
animalStr = "Cat rat mat fat pat"
regex2 = /[crmfp]at/i
puts animalStr.match(regex2)
# We can also allow for characters in a range:
# Remember to include upper and lowercase letters:
regex3 = /[c-mC-M]at/
puts animalStr.match(regex3)
# Use ^ to denote any character but whatever characters are between the brackets:
regex4 = /[^Cr]at/
puts animalStr.match(regex4)

# ---------- Replace All Matches ----------
# Replace matching items in a string:
owlFood = "rat cat mat pat"
# You can turn a regex into a pattern object which provide additional methods:
regex5 = /[cr]at/
replacement = "owl"
owlArr = owlFood.split(" ")
for word in owlArr
    if word.match(regex5)
        word.replace(replacement)
    end
end
owlFood += owlArr.to_s
puts (owlFood)

# ---------- Solving Backslash Problems ----------
# Regex use the backslash to designate special characters and Python does the same inside strings which causes issues.
# Let's try to get "\\stuff" out of a string:
randStr = "Here is \\stuff"
regex6 = /\\stuff/
regex7 = /\\\\stuff/
# This won't find it:
puts (randStr.match(regex6))
# This does, but we have to put in 4 slashes which is messy:
puts (randStr.match(regex7))

# ---------- Matching Any Character ----------
# We saw that . matches any character, but what if we want to match a period.
# Backslash the period, you do the same with [, ] and others:
randStr = "F.B.I. I.R.S. CIA"
regex8 = /[.][..][..]/
puts (randStr.match(regex8))

# ---------- Matching Whitespace ----------
# We can match many whitespace characters:
randStr = <<-eos
This is a long
string that goes
on for many lines
eos
# Remove newlines:
regex9 = /\n/
randStr.gsub!(regex9, " ")
puts (randStr)
# You can also match
# \b : Backspace
# \f : Form Feed
# \r : Carriage Return
# \t : Tab
# \v : Vertical Tab
# You may need to remove \r\n on Windows.

# ---------- Matching Any Single Number ----------
# \d can be used instead of [0-9]
# \D is the same as [^0-9]
randStr = "12345"
regex10 = /\d\d\d/
puts (randStr.match(regex10))

# ---------- Matching Multiple Numbers ----------
# You can match multiple digits by following the \d with {numOfValues}
# Match 5 numbers only:
numb = "12345"
regex11 = /\d{5}/
if regex11 =~ numb
    puts ("It is a zip code")
end
# You can also match within a range:
# Match values that are between 5 and 7 digits:
numStr = "123 12345 123456 1234567"
regex12 = /\d{5,7}/
puts (numStr.match(regex12))

# ---------- Matching Any Single Letter or Number ----------
# \w is the same as [a-zA-Z0-9_]
# \W is the same as [^a-zA-Z0-9_]
name = "Ultraman"
phNum = "412-555-1212"
regex13 = /\w{3}-\w{3}-\w{4}/
regex14 = /\w{2,20}/
# Check if it is a phone number:
if regex13 =~ phNum
    puts ("It is a phone number")
end
# Check for valid first name between 2 and 20 characters:
if regex14 =~ name
    puts ("It is a valid name")
end

# ---------- Matching WhiteSpace ----------
# \s is the same as [\f\n\r\t\v]
# \S is the same as [^\f\n\r\t\v]
# Check for valid first and last name with a space:
name1 = "Toshio Muramatsu"
regex15 = /\w{2,20}\s\w{2,20}/
if regex15 =~ name1
    puts ("It is a valid full name")
end

# ---------- Matching One or More ----------
# + matches 1 or more characters:
# Match a followed by 1 or more characters:
str1 = "a as ape bug"
regex16 = /\a+/
puts (str1.match(regex16))

# ---------- Problem ----------
# Create a Regex that matches email addresses from a list
# 1. 1 to 20 lowercase and uppercase letters, numbers, plus ._%+-
# 2. An @ symbol
# 3. 2 to 20 lowercase and uppercase letters, numbers, plus .-
# 4. A period
# 5. 2 to 3 lowercase and uppercase letters
emailList = [
    "db@aol.com",
    "m@.com",
    "@apple.com",
    "db@.com"
]
regex17 = /[\w._%+-]{1,20}@[\w.-]{2,20}.[A-Za-z]{2,3}/
for email in emailList
    if regex17 =~ email
        puts (email)
    end
end
