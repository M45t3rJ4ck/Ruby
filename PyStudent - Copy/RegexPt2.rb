# Did you find a match
# if re.search("REGEX", yourString)
# Get list of matches
# print("Matches :", len(re.findall("REGEX", yourString)))
# Get a pattern object
# regex = re.compile("REGEX")
# Substitute the match
# yourString = regex.sub("substitution", yourString)
# [ ]   : Match what is in the brackets
# [^ ]  : Match anything not in the brackets
# .     : Match any 1 character or space
# +     : Match 1 or more of what proceeds
# \n    : Newline
# \d    : Any 1 number
# \D    : Anything but a number
# \w    : Same as [a-zA-Z0-9_]
# \W    : Same as [^a-zA-Z0-9_]
# \s    : Same as [\f\n\r\t\v]
# \S    : Same as [^\f\n\r\t\v]
# {5}   : Match 5 of what proceeds the curly brackets
# {5,7} : Match values that are between 5 and 7 in length

# ---------- Matching Zero or One ----------
randStr1 = "cat cats"
regex1 = /[cat]+s?/
# Match cat or cats
puts ("1.) Matches: #{randStr1.match(regex1)}")

# ---------- Matching Zero or More ----------
# * matches zero or more of what proceeds it
randStr2 = "doctor doctors doctor's"
# Match doctor doctors or doctor's
regex2 = /[doctor]+['s]*/
puts ("2.) Matches: #{randStr2.match(regex2)}")
# You can do the same by setting an interval match
regex3 = /[doctor]+['s]{0,2}/
puts ("3.) Matches: #{randStr2.match(regex3)}")

# ---------- PROBLEM ----------
# On Windows, newlines are some times \n and other times \r\n
# Create a regex that will grab each of the lines in this string, print out the number of matches and each line.
longStr = <<-eos
Just some words
and some more\r
and more
eos
regex4 = /[\w\s]+[\r]?\n/
puts ("4.) Matches: #{longStr.match(regex4)}")

# ---------- Greedy & Lazy Matching ----------
randStr3 = "<name>Life On Mars</name><name>Freaks and Geeks</name>"
# Let's try to grab everything between <name> tags
# Because * grabs the biggest match possible, we can't get what we want, which is each individual tag match.
regex5 = /[^\b<name>\b][.*][^\b<\/name>\b]/
puts ("5.) Matches: #{randStr3.match(regex5)}")
# We want to grab the smallest match we use *?, +?, or {n,}? instead.
regex6 = /[\b^<name>\b][.?][\b^<\/name>\b]/
puts ("6.) Matches: #{randStr3.match(regex6)}")

# ---------- Word Boundaries ----------
# We use word boundaries to define where our matches start and end \b matches the start or end of a word.
# If we want ape it will match ape and the beginning of apex
randStr4 = "ape at the apex"
# If we use the word boundary
regex7 = /\bape\b/
puts ("7.) Matches: #{randStr4.match(regex7)}")

# ---------- String Boundaries ----------
# ^ : Matches the beginning of a string if outside of a [ ]
# $ : Matches the end of a string
# Grab everything from the start of the string to @
randStr5 = "Match everything up to @"
regex8 = /^.*[^@]/
puts ("8.) Matches: #{randStr5.match(regex8)}")


# Grab everything from @ to the end of the line
randStr6 = "@ Get this string"
regex9 = /[^@\s].*$/
puts ("9.) Matches: #{randStr6.match(regex9)}")
# Grab the 1st word of each line using the the multiline code which allows for the targeting of each line after
# a line break with ^.
randStr7 = <<-eos
Ape is big
Turtle is slow
Cheetah is fast
eos
regex10 = /(?m)^.*?\s/
puts ("10.) Matches: #{randStr7.match(regex10)}")

# ---------- Subexpressions ----------
# Subexpressions are parts of a larger expression.
# If you want to match for a large block, but only want to return part of it.
# To do that surround what you want with ( ).
# Get just the number minus the area code
randStr8 = "My number is 412-555-1212"
regex11 = /-(.*)/
puts ("11.) Matches: #{randStr8.match(regex11)}")

# ---------- Problem ----------
# Get just the numbers minus the area codes from this string.
randStr9 = "412-555-1212 412-555-1213 412-555-1214"
regex12 = /[^412-](.{8})/
puts ("12.) Matches: #{randStr9.match(regex12)}")

# ---------- Multiple Subexpressions ----------
# You can have multiple subexpressions as well.
# Get both numbers that follow 412 separately.
randStr10 = "My number is 412-555-1212"
regex13 = /(-\d{3})/
regex14 = /(-\d{4})/
puts ("13.) Matches: #{randStr10.match(regex13)}")
puts ("14.) Matches: #{randStr10.match(regex14)}")
