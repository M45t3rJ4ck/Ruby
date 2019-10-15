# Create an array
friends = Array["Mario", "Luigi", "Bowser", "Princess"]
numbers = Array[1, 2, 3, 4]
bools = Array[true, false, true, false]
mixd = Array["Mario", 2, true, "Luigi"]
# Output values to console
puts "Line 1:"
puts friends
puts numbers
puts bools
puts mixd
# Select values to output
puts "Line 2:"
puts friends[0]
puts numbers[1]
puts bools[2]
puts mixd[3]
# Select values from back to output
puts "Line 3:"
puts friends[-1]
puts numbers[-2]
puts bools[-3]
puts mixd[-4]
# Select range to output
puts "Line 4:"
puts friends[0, 2]
puts numbers[1, 3]
puts bools[2, 4]
puts mixd[3, 5]
# Add to arrays
puts "Line 5:"
friends[5] = "Mushrooms"
puts friends
numbers[5] = 5
puts numbers
bools[5] = true
puts bools
mixd[5] = 4
puts mixd
# Create a new empty array
puts "Line 6:"
city = Array.new
city[0] = "Cape Town"
print "Enter a city: "
city[1] = gets.chomp()
puts city
# Methods useable on arrays
puts "Line 7:"
puts friends.length()
puts numbers.length()
puts bools.length()
puts mixd.length()
puts city.length()
puts "Line 8:"
puts friends.include? "Princess"
puts numbers.include? 3
puts bools.include? true
puts mixd.include? "Luigi"
puts city.include? "Cape Town"
puts "Line 9:"
puts friends.reverse()
puts numbers.reverse()
puts bools.reverse()
puts bools.reverse()
puts mixd.reverse()
puts city.reverse()
puts "Line 10:"
puts friends.sort()
puts numbers.sort()
puts bools.sort()
puts mixd.sort()
puts city.sort()