# Create hashes to store unique keys for abreviated values
# 1) Shorthand
states = {
    "PA" => "Pennsylvania",
    "NY" => "New York",
    "OR" => "Oregon"
}
# 2) Standard
stated = {
    :PA => "Pennsylvania",
    :NY => "New York",
    :OR => "Oregon"
}
# Output code to console
puts "Line 1:"
puts states
puts states["OR"]
puts "Line 2:"
puts stated
puts stated[:NY]
