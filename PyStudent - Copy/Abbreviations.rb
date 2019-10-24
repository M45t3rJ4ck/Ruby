# Write a program that is able to give you the meaning of a given abbreviation.
# Create a dictionary that contains some abbreviations and their meanings.
# Let the abbreviation be the key and the meaning of the abbreviation be the value (e.g. ADSL: Asymmetric Digital Subscriber Line).
# Make sure that you dictionary has at least 4 abbreviations and their meanings.
# If you need ideas on some abbreviations, go to http://www.abbreviations.com/
# After you have created your dictionary add 2 more abbreviations and their meanings to it.
# Now ask the user to enter an abbreviation and check if that abbreviation is in your dictionary.
# If it is print out the abbreviation and it's meaning.
# If it is not in the dictionary, print out "Abbreviation not found"

# Hash for abbreviations:
abbreviations = {
    "asap" => "as soon as possible",
    "acrim" => "active cavity radiometer irradiance monitor",
    "acs" => "advanced camera for surveys",
    "adsl" => "asymmetric digital subscriber line",
    "acts" => "advanced communications technology satellite",
}
# Define function to hadle user request:
def get_abbreviation(abbreviations)
    # Output abbreviations list for user:
    puts abbreviations.keys
    # Save User selection to variable:
    print "Enter an abbreviation: "
    u_abb = gets.chomp()
    # Output user selection:
    if abbreviations.keys.include? u_abb
        puts (abbreviations[u_abb])
        # If user selection not found provide option to save it:
    elsif !abbreviations.keys.include? u_abb
        puts "Abbreviation not found."
        puts "Would you like to add this abbreviation(Y/N)? "
        add_abb = gets.chomp()
        add_abb = add_abb.upcase()
        if add_abb == "Y"
            print "Enter the meaning: "
            new_val = gets.chomp()
            abbreviations[u_abb] = new_val
            puts abbreviations.keys
            print "Enter an abbreviation: "
            u_abb = gets.chomp()
            for u_abb in abbreviations.keys
                puts (abbreviations[u_abb])
            end
        end
    end
end

puts get_abbreviation(abbreviations)
