# Imagine there's a really rude friend of yours, that always sends emails with all words in capital letters. 
# Your friend also doesn't know how to use a spacebar, so he seperates words with the : character.
# Imagine your friend sends the message "HI:HOW:R:U:TODAY:
# Take this message, as a string. Split it into a list of string words and make each word lowercase using a list comprehension on each element.
# Now, edit the first and last word (ie the first and last element of your list) to capitalise the first letter of the sentence, 
# and add a full stop to the end of the sentence.
# Print out this new intelligent sentence.

#Defineing operators - lists & strings
words = []
result = ""

friend_lst = ("HI:HOW:R:U:TODAY:")
words = friend_lst.split(":")

result = words[0].capitalize.to_s + " "
result += words[1..-1].join(" ").downcase.to_s
result += "."

puts result
