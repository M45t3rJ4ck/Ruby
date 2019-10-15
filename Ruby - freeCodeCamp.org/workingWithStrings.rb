# Escaping characters
puts "1) Giraffe\" Academy"
puts "2) Giraffe\nAcademy"
phrase = "3) Giraffe Academy"
puts phrase

# String Methods or String Functions
# Uppercase
phrase = "4) Giraffe Academy"
puts phrase.upcase()
puts "programming".upcase()
# Lowercase
phrases = "5) Giraffe Academy"
puts phrases.downcase()
puts "PROGRAMMING".downcase()
# Strip white space
phrased = "     6) Giraffe Academy      "
puts phrased.strip()
puts "    programming    ".strip()
# Get length
phraser = "7) Giraffe Academy"
puts phraser.length()
puts "programming".length()
# Know if value included in string
phrasea = "8) Giraffe Academy"
puts phrasea.include? "a"
puts "Programming".include? "z"
# Know value by index - using range
phrasez = "7) Giraffe Academy"
puts phrasez[3]
# Know value from index and next amount indicated values - using range
phraser = "8) Giraffe Academy"
puts phraser[4, 5]
# Get value using index
phraseb = "9) Giraffe Academy"
puts phraseb.index("f")