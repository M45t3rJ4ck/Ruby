=begin
Did you find a match : if re.search("REGEX", yourString)
Get list of matches : print("Matches :", len(re.findall("REGEX", yourString)))
Get a pattern object : regex = re.compile("REGEX")
Substitute the match : yourString = regex.sub("substitution", yourString)
[ ]   : Match what is in the brackets
[^ ]  : Match anything not in the brackets
( )   : Return surrounded submatch
.     : Match any 1 character or space
+     : Match 1 or more of what proceeds
?     : Match 0 or 1
*     : Match 0 or More
*?    : Lazy match the smallest match
\b    : Word boundary
^     : Beginning of String
$     : End of String
\n    : Newline
\d    : Any 1 number
\D    : Anything but a number
\w    : Same as [a-zA-Z0-9_]
\W    : Same as [^a-zA-Z0-9_]
\s    : Same as [\f\n\r\t\v]
\S    : Same as [^\f\n\r\t\v]
{5}   : Match 5 of what proceeds the curly brackets
{5,7} : Match values that are between 5 and 7 in length
($m)  : Allow ^ on multiline string
=end

# ---------- Back References ----------
# A back reference allows you to to reuse the expression that proceeds it
# Grab a double word
randStr1 = "The cat cat fell out the window"
# Match a word boundary, 1 or more characters followed by a space if it is then followed by the same
# match that is surrounded by the parentheses
regex1 = /(\b\w+)\s+\1/
puts ("1.) Matches: #{randStr1.match(regex1)}")

# ---------- Back Reference Substitutions ----------
# Replace the bold tags in the link with no tags
randStro = "<a href='#'><b>The Link</b></a>"
puts ("randStro: #{randStro}")
# Regex matches bold tags and grabs the text between them to be used by the back reference
regex2 = /<b>(.*?)<\/b>/
# Replace the tags with just the text between them
randStro.gsub!(regex2, "\1")
puts ("2.) randStro: #{randStro}")

# ---------- Another Back Reference Substitution ----------
# Receive this string
randStrn = "412-555-1212"
puts ("3.) randStrn: #{randStrn}")

# ---------- PROBLEM ----------
# Receive a string like this
randStr2 = "https://www.youtube.com http://www.google.com"
# Grab the URL and then provide the following output using a back reference substitution.
# <a href='https://www.youtube.com'>www.youtube.com</a>
# <a href='https://www.google.com'>www.google.com</a>
regex4 = /(https?:\/\/([\w.]+))/
randStr2.gsub!(regex4, "<a href='\1'>\2</a>\n")
puts ("4.) randStr2: #{randStr2}")

# ---------- Look Ahead ----------
# A look ahead defines a pattern to match but not return
# You define the expression to look for but not return
# like this (?=expression)
randStr3 = "One two three four"
# Grab all letters and numbers of 1 or more separated by a word boundary but don't include it
regex5 = /\w+(?=\b)/
puts ("5.) randStr3:  #{randStr3.match(regex5)}")

# ---------- Look Behind ----------
# The look behind looks for what is before the text to return, but doesn't return it
# It is defined like (?<=expression)
randStr4 = "1. Bread 2. Apples 3. Lettuce"
# Find the number, period and space, but only return the 1 or more letters or numbers that follow
regex6 = /(?<=\d.\s)\w+/
puts ("6.) randStr4: #{randStr4.match(regex6)}")

# ---------- Look Ahead & Behind ----------
randStr5 = "<h1>I'm Important</h1> <h1>So am I</h1>"
# Use the look behind, get 1 or more of anything, and use the look ahead
regex7 = /(?<=<h1>).+?(?=<\/h1>)/
puts ("7.) randStr5: #{randStr5.match(regex7)}")

# ---------- Negative Look Ahead & Behind ----------
# These are used to look for text that doesn't match
# the pattern
# (?!expression) : Negative Look Ahead
# (?<!expression) : Negative Look Behind
randStr6 = ("8 Apples $3, 1 Bread $1, 1 Cereal $4")
# Grab the total number of grocery items by ignoring the $
regex8 = /\$\d/
matches = Array.new
strRand = randStr6.split(",").to_a
for i in strRand
    matches.push(i.match(regex8).to_s)
end
puts ("8) Items: #{matches}")
# Convert from a string list to an int list
for i in matches
    prices = ""
    regex9 = /\d/
    prices += i.match(regex9).to_s
    for price in prices.split("")
        sum = 0
        sum += price.to_i
    end
    sum += sum
end
# Sum the items in the list with reduce
puts ("9) Total Cost: #{sum}")
