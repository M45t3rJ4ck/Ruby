# Create a dictionary called countryMap, where the the KEYS are the name of a country (i.e. a String), and the VALUE for each key is the name of that country's
# capital city.
# For Example:
#    countryMap = {
#        'UnitedKingdom': 'London',
#        'Sweden': 'Stockholm',
#        'Canada': 'Ottawa',
#    }
#    What does print countryMap['Sweden'] return?

country_map = {
    "united_kingdom" => "london",
    "sweden" => "stockholm",
    "canada" => "ottawa",
    "south_africa" => "johannesburg",
    "russia" => "moscow",
    "america" => "washington"
}

puts (country_map.keys)
print ("Enter a country's name: ")
country = gets.chomp
puts (country_map[country])

