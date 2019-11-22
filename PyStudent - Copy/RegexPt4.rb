# [ ]   : Match what is in the brackets
# [^ ]  : Match anything not in the brackets
# ( )   : Return surrounded submatch
# .     : Match any 1 character or space
# +     : Match 1 or more of what proceeds
# ?     : Match 0 or 1
# *     : Match 0 or More
# *?    : Lazy match the smallest match
# \b    : Word boundary
# ^     : Beginning of String
# $     : End of String
# \n    : Newline
# \d    : Any 1 number
# \D    : Anything but a number
# \w    : Same as [a-zA-Z0-9_]
# \W    : Same as [^a-zA-Z0-9_]
# \s    : Same as [\f\n\r\t\v]
# \S    : Same as [^\f\n\r\t\v]
# {5}   : Match 5 of what proceeds the curly brackets
# {5,7} : Match values that are between 5 and 7 in length
# ($m)  : Allow ^ on multi-line string

# Use a back reference to substitute what is between the bold tags and eliminate the bold tags re.sub
# (r"<b>(.*?)</b>",r"\1", randStr)

# Use a look ahead to find all characters of 1 or more with a word boundary,
# but don't return the word boundary re.findall(r"\w+(?=\b)", randStr)

# Use a look behind to find words starting with a number,
# period and space, but only return the word that follows re.findall(r"(?<=\d.\s)\w+", randStr)

# Use a negative look behind to only return numbers without a $ in front of them re.findall(r"(?<!\$)\d+", randStr)

# ---------- OR CONDITIONAL ----------
# You can use | to define the matches you'll except
randStr1 = ("1.Dog, 2.Cat, 3.Turtle")
regex1 = /(\d\.)*/
puts ("1) #{randStr1.match(regex1)}")

# ---------- PROBLEM ----------
# Create a regex that will match for 5 digit zip codes or zip codes with 5 digits a dash and then 4 digits
randStr2 = "12345 12345-1234 1234 12346-333"
regex2 = /(\d{5}-\d{4}|\d{5}\s)+/
puts ("2) #{randStr2.match(regex2)}")

# ---------- GROUP ----------
# We can use group to retrieve parts of regex matches
print ("Enter your birthday (mm-dd-yyyy): ")
bd = gets.chomp
regex3 = /(\d{1,2})-(\d{1,2})-(\d{4})/
if match = bd.match(/(\d{1,2})\-(\d{1,2})\-(\d{4})/i)
    regex4, regex5, regex6 = match.captures
end
puts ("3) You were born on: #{bd.match(regex3)}")
puts ("4) Your Birth Month: #{bd.match(regex4)}")
puts ("5) Your Birth Day: #{bd.match(regex5)}")
puts ("6) Your Birth Year: #{bd.match(regex6)}")


# ---------- MATCH OBJECT FUNCTIONS ----------
# There are functions that provide more information on your matches
randStr3 = "The chicken weighed 13 lbs"
regex7 = /\d{2}/
# Print the match
puts ("7) Match: #{randStr3.match(regex7)}")
# Print starting index of the match
puts ("8) Begining: #{randStr3.enum_for(:scan, regex7).map {Regexp.last_match.begin(0)}}")
# Print the ending index of the match
puts ("9) Ending: #{randStr3.enum_for(:scan, regex7).map {Regexp.last_match.end(0)}}")

# ---------- NAMED GROUPS ----------
# You can also assign names to matches
randStr4 = "December 21 1974"
if match = randStr4.match(/^(?<month>\w+)\s(?<day>\d+)\s(?<year>\d+)/i)
    regex8Month, regex8Day, regex8Year = match.captures
end
puts ("10) Month: #{randStr4.match(regex8Month)}")
puts ("11) Day: #{randStr4.match(regex8Day)}")
puts ("12) Year: #{randStr4.match(regex8Year)}")

# ---------- PROBLEM ----------
# Find all of the following email addresses
randStr5 = "d+b@aol.com a_1@yahoo.co.uk A-100@m-b.INTERNATIONAL"
regex9 = /[a-zA-Z0-9_.+\-]+@[a-zA-Z0-9\-]+\.[a-zA-Z0-9\-.]+/
puts ("13) #{randStr5.match(regex9)}")

# ---------- PROBLEM ----------
# Find all of the following phone numbers and then print them
randStr6 = "14125551212 4125551212 (412)5551212 412 555 1212 412-555-1212 1-412-555-1212"
regex10 = /((1?)(-| ?)(\()?(\d{3})(\)|-| |\)-|\) )?(\d{3})(-| )?(\d{4}|\d{4}))*/
matches = []
matches.push(randStr6.match(regex10))
for i in matches
    puts ("14) #{i}")
end
