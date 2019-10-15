# Comments:
# To insert a single-line comment use hash-symbol
# To do multi-line comment start with =begin and end with =end

puts "Line 1:"
# To print to screen without new-line after output:
print "Enter a number: "
# Variables to start with lowercase letters or single underscore:
first_num = gets.to_i
print "Enter another number: "
# To get data and store as integer:
second_num = gets.to_i
# To print to screen with a new-line after output:
# Convert integer to string:
puts first_num.to_s + " + " + second_num.to_s + " = " + (first_num + second_num).to_s

# 5 Main Arithmetic Operators:
puts "Line 2:"
# Addition:
puts "6 + 4 = " + (6 + 4).to_s
# Subtraction:
puts "6 - 4 = " + (6 - 4).to_s
# Division:
puts "6 / 4 = " + (6 / 4).to_s
# Multiplication:
puts "6 * 4 = " + (6 * 4).to_s
# Modulus:
puts "6 % 4 = " + (6 % 4).to_s

# Integers or Fixed numbers and Floats(14 digits):
puts "Line 3.1:"
num_one = 1.000
num_two = 0.999
puts num_one.to_s + " - " + num_two.to_s + " = " + (num_one - num_two).to_s
puts "Line 3.2:"
big_float = 1.12345678901234
puts (big_float + 0.00000000000005).to_s

# To determine data type:
puts "Line 4:"
puts 1.class
puts 1.1234.class
puts "A String".class

# Constants - can be changed, but will receive error - must start with uppercase letter:
puts "Line 5:"
A_CONSTANT = 31.4
A_CONSTANT = 1.6
puts A_CONSTANT

# Return file object:
puts "Line 6:"
# Create new file:
writer_handler = File.new("yourSum.out", "w")
# Insert data to file:
writer_handler.puts("Random Text").to_s
# Remember to close file when done:
writer_handler.close
# Read data from file:
data_from_file = File.read("yourSum.out")
# Output data to screen:
puts "Data from file: " + data_from_file

# Output data from another file:
puts "Line 7:"
# Load to memory:
load "rubyOrNotRuby.rb"

# Conditional Operations:
puts "Line 8.1:"
# Comparison:
# ==  - Equal to
# !=  - Not equal to
# >  - Greater than
# >=  - Greater than or equal to
# <  - Less than
# <=  - Less than or equal to
# Declare variable:
age1 = 12
# Using if statement:
if (age1 >= 5) && (age1 <= 6)
    puts "Your in Kindergarden."
elsif (age1 >= 7) && (age1 <= 13)
    puts "Your are in Primary School."
    puts "Still a long way to go till your finished with school."
else
    puts "Stay Home."
end
# Logic Operators:
puts "Line 8.2:"
# &&, and  - Include both or more values
# ||, or  - Decide between two or more values
# !, not  - Opposite or negative values
puts "true && false = " + (true && false).to_s
puts "true || false = " + (true || false).to_s
puts "!false = " + (!false).to_s
# Additional Comparison Operator:
puts "Line 8.3:"
# Will return 0 if both are equal
# Will return 1 if first is greater
# Will return -1 if first is smaller
puts "5 <=> 10 = " + (5 <=> 10).to_s

# Statements:
# Turnary Operator:
puts "Line 9.1:"
age3 = 12
puts (age3 >= 50) ? "Old" : "Young"
puts "Line 9.2:"
# Unless statement:
age2 = 12
unless age2 > 4
    puts "No School"
else
    puts "Go To School"
end
puts "You are young" if age2 < 30
# Case Statement:
puts "Line 9.3:"
puts "Enter a greeting: "
# Remove new-line after user hits enter-button with chomp
greetings = gets.chomp
case greetings
when "French", "french"
    puts "Bojour"
    # exit will exit and not print following code
    # exit
when "Spanish", "spanish"
    puts "Hola"
    # exit
else "English"
    puts "Hello"
end

# Looping:
puts "Line 10.1:"
x = 1
loop do 
    x += 1
    # Next is like continue in other languages
    next unless (x % 2) == 0
    puts x
    break if x >= 10
end
# While loops:
puts "Line 10.2:"
y = 1
while y <= 10
    y += 1
    next unless (y % 2) == 0
    puts y
end
# Until loop:
puts "Line 10.3:"
z = 1
until z >= 10
    z += 1
    next unless (z % 2) == 0
    puts z
end
# For loop:
puts "Line 10.4:"
numbers = [1, 2, 3, 4, 5]
for number in numbers
    # To output value in output use #{}:
    print "#{number}, "
end
puts "Line 10.5:"
groceries = ["Bananas", "Sweet Potatoes", "Pasta", "Tomatoes"]
# Declare temporary holder for values and place between ||
groceries.each do |food|
    puts "Time to get some #{food}"
end
# Cycle through range:
puts "Line 10.6:"
(0..5).each do |i|
    puts "# #{i}"
end

# Functions:
puts "Line 11.1:"
def add_nums(num1, num2)
    return num1.to_i + num2.to_i
end
puts add_nums(3, 5)
# Variables can't be changed in functions:
puts "Line 11.2:"
w = 1
def change_w(w)
    w = 7
end
change_w(w)
puts "w = #{w}"

# Exceptions:
puts "Line 12.1:"
# Using begin and rescue:
print "Enter your number: "
num_1 = gets.to_i
print "Enter your number: "
num_2 = gets.to_i
begin 
    answer = num_1 / num_2
rescue
    puts "You can't divide by zero"
    # exit
end
puts "#{num_1} / #{num_2} = #{answer}"
# Using raise:
puts "Line 12.2:"
age4 = 12
def check_age(age4)
    raise ArgumentError, "Enter a positive number" unless age4 > 0
end
begin
    # Ignor age variable
    check_age(-1)
rescue ArgumentError
    puts "That is an impossible age"
end

# String Functions
puts "Line 13.1:"
# Interpolation with addition:
puts "Add them #{4 +5} \n\n"
puts 'Add them #{4 +5} \n\n'
# Heredoc:
puts "Line 13.2:"
multiline_string = <<EOM
This is very long string
that contains interpolation
like #{4 + 5} \n\n
EOM
puts multiline_string
# Contanation:
puts "Line 13.3:"
first_name = "Derek"
last_name = "Banas"
full_name = first_name + last_name
middle_name = "Justin"
# Interpolation with strings:
full_names = "#{first_name} #{middle_name} #{last_name}"
# Check if string contains a string:
puts full_names.include? ("Justin")
# Return number of charecters:
puts full_names.size
# Count vowels:
puts "Vowels: " + full_names.count("aeiou").to_s
# Count constanents:
puts "Constanents: " + full_names.count("^aeiou").to_s
# Check if a string starts with another string:
puts full_names.start_with?("Banas")
# Get index or charecter number:
puts "Index: " + full_names.index("Banas").to_s
puts "Line 13.4:"
# Check for equality:
puts "a == a" + ("a" == "a").to_s
# Check if exact match:
puts "\"a\".equal?(\"a\"):" + ("a".equal?"a").to_s
puts first_name.equal?first_name
puts "Line 13.5:"
# Letter-case:
puts full_names.upcase
puts full_names.downcase
puts full_names.swapcase
puts "Line 13.6:"
# To eleminate white space:
puts full_names.lstrip
puts full_names.rstrip
puts full_names.strip
puts "Line 13.7:"
# Formating strings:
# Justified:
puts full_names.rjust(20, '.')
puts full_names.ljust(20, '.')
puts full_names.center(20, '.')
puts "Line 13.8:"
# Chop last charecter:
puts full_names.chop
puts full_names.chomp('as')
puts "Line 13.9:"
# Delete specific charecters:
puts full_names.delete("a")
puts "Line 13.10:"
# Create an array:
name_array = full_names.split(//)
puts name_array
names_array = full_names.split(/ /)
puts names_array
# String convertions:
puts "Line 13.11:"
# To Integer:
# to_i
# To Float:
# to_f
# To Symbol:
# to_sym
# Escape sequences:
puts "Line 13.12:"
# Backslash:
# \\
# Single-quote:
# \'
# Double-quote:
# \"
# Bell:
# \a
# Backspace:
# \b
# Formfeed:
# \f
# Newline:
# \n
# Carriage:
# \r
# Tab:
# \t
# Vertical Tab:
# \v

# Objects:
puts "Line 14.1:"
# Standard method:
# Model real world objects using classes
# Attributes = instance variables
# Capabilities = methods
class Animal
    def initialize
        puts "Creating a new animal"
    end
    # Setter
    def set_name(new_name)
        @name = new_name
    end
    # Getter
    def get_name
        @name
    end
    # Get a value
    def name
        @name
    end
    # Set a value
    def name=(new_name)
        # Use of getters and setters - avoid bad data contamination
        if new_name.is_a? (Numeric)
            puts "Name can't be a number."
        else
            @name = new_name
        end
    end
end
# Create new animal
cat = Animal.new
cat.set_name("Peekaboo")
puts cat.get_name
puts cat.name
cat.name = "Sophie"
puts cat.name
puts "Line 14.2:"
# Shortcuts for getters and setters:
class Dog
    # Getter functions:
    attr_reader :name, :height, :weight
    # Setter functions:
    attr_writer :name, :height, :weight
    # Getter and Setter function in one statement:
    attr_accessor :name, :height, :weight
    def bark
        return "Generic Bark"
    end
end
rover = Dog.new
rover.name = "Rover"
puts rover.name
# Inheritance:
puts "Line 14.3:"
class GermanShepard < Dog
    def bark
        return "Loud Bark"
    end
end
max = GermanShepard.new
max.name = "Max"
# Formating print statement:
# %s - format strings
# %d - format integers
# %f - format floats
# %3f - format float to 3 decimal places
printf "%s goes %s \n", max.name, max.bark()

# Modules:
puts "Line 15:"
# Made up of methods and instances, but can't be instanciated(can't be turned into object):
# To import must be same directory:
require_relative "human"
require_relative "smart"
module Animal
    def make_sound
        puts "Grrrrr"
    end
end
class Dog
    include Animal
end
rover = Dog.new
rover.make_sound
class Scientist
    include Human
    # If module to superseed - to be available in both original and current module
    prepend Smart
    def act_smart
        return "E = mc^2"
    end
end
einstein = Scientist.new
einstein.name = "Albert"
puts einstein.name
einstein.run
puts einstein.name + " says " + einstein.act_smart

# Polimorphism:
puts "Line 16:"
class Bird
    def tweet(bird_type)
        bird_type.tweet
    end
end
class Cardinal < Bird
    def tweet
        puts "Tweet Tweet"
    end
end
class Parrot
    def tweet
        puts "Squawk Squawk"
    end
end
generic_bird = Bird.new
generic_bird.tweet(Cardinal.new)
generic_bird.tweet(Parrot.new)

# Symbols:
puts "Line 17:"
# Basicaly strings that can't be changed
# Use to spare memory or speed string comparison
# Use when value doesn't need to change nor access to string methods
# Also used as keys inside of hashes
# example :derek
puts :derek
puts :derek.to_s
puts :derek.class
puts :derek.object_id

# Arrays
puts "Line 18:"
# Starts storing with index 0
# Create new empty array
array1 = Array.new
# Create new array with 5 blank spaces
array2 = Array.new(5)
# Create new array with 5 values
array3 = Array.new(5, "empty")
array4 = [1, "two", 3.0, "Four", 5.5]
puts array1
puts array2
puts array3
puts array4
# Output using indexes:
puts array4[2]
# Output range by indexes:
puts array4[2, 2].join(", ")
# Output specific indicated values:
puts array4.values_at(0, 1, 3).join(", ")
# Add to begining of array:
puts array4.unshift(13)
# Remove at beging of array:
puts array4.shift()
# Add to end of array:
puts array4.push(100, 200)
# Remove last item of array:
puts array4.pop()
# Join two arrays:
array4.concat([10, 20, 30])
# To know size of array:
puts "Array Size: " + array4.size().to_s
# Check if array contains a value:
puts "Array Contains: " + array4.include?(100).to_s
# Check how many matches:
puts "Array Matches: " + array4.count(100).to_s
# Check if array is empty:
puts "Array Empty: " + array4.empty?.to_s
# Convert array into string:
puts array4.join(", ")
# Print entire array to screen:
p array4
# Output using loop:
array4.each do |value|
    puts value
end

# Hashes:
puts "Line 19:"
# Collection of key value pairs:
number_hash = {
    "PI" => 3.14,
    "Golden" => 1.618,
    "e" => 2.718
}
# To output:
puts number_hash["PI"]
superheros = Hash[
    "Clark Kent",
    "Superman",
    "Bruce Wayne",
    "Batman"
]
puts superheros["Clark Kent"]
# Add to hash:
superheros["Barry Allen"] = "Flash"
# Defualt key value:
samp_hash = Hash.new("No Such Key")
puts samp_hash["Dog"]
superheroines = Hash["Lisa Morel", "Aquagirl", "Betty Kane", "Batgirl"]
# Combine two hashes:
# Destructive merge - duplicates will be eliminated:
superheros.update(superheroines)
# Non-destructive merge - keep all duplicates:
superheros.merge(superheroines)
# To output:
superheros.each do |key, value|
    puts key.to_s + " : " + value
end
# Hash functions:
puts "Has Key Lisa Morel: " + superheros.has_key?("Lisa Morel").to_s
puts "Has Value Batman: " + superheros.has_value?("Batman").to_s
puts "Is Hash Empty: " + superheros.empty?.to_s
puts "Size of Hash: " +superheros.size.to_s
# Delete a key:
superheros.delete("Barray Allen")

# Enumerable:
puts "Line 20:"
# Collection capabilities:
class Menu
    include Enumerable
    # To ensure inheriting must include a function called each:
    def each
        # Include every to be inside enumerable:
        yield "pizza"
        yield "spaghetti"
        yield "salad"
        yield "water"
        yield "bread"
    end
end
menu_options = Menu.new
menu_options.each do |item|
    puts "Would You Like: #{item}"
end
# To find an item:
p menu_options.find{|item| item = "pizza"}
# Know if any items is longer than 5 characters:
p menu_options.select{|item| item.size <= 5}
# Reject any item that it smaller than 5 items:
p menu_options.reject{|item| item.size <= 5}
# Know the first item:
p menu_options.first
# Know the first two items:
p menu_options.take(2)
# Know everything except first two items:
p menu_options.drop(2)
# Get minimum item:
p menu_options.min
# Get maximum item:
p menu_options.max
# To sort items:
p menu_options.sort
# Return in reverse order:
p menu_options.reverse_each {|item| puts item}

# File object:
puts "Line 21:"
# Write to file:
file = File.new("Authors.out", "w")
# To insert data into file:
file.puts "William Shakespeare"
file.puts "Agatha Christie"
file.puts "Barbara Cartland"
# Close file:
file.close
# Output everything inside file:
puts File.read("Authors.out")
# Open a file to append to:
file = File.new("Authors.out", "a")
file.puts "Danielle Steel"
file.close
file = File.new("authors_info.out", "w")
file.puts "William Shakespeare, English, plays and poetry, 4 billion"
file.puts "Agatha Christie, English, who done its, 4 billion"
file.puts "Barbara Cartland, English, romance novels, 1 billion"
file.puts "Danielle Steel, English, romance novels, 800 million"
file.close
# To output sentences base on data in file:
File.open("authors_info.out") do |record|
    record.each do |item|
        name, lang, speciality, sales = item.chomp.split(', ')
        puts "#{name} was a #{lang} author that specialized in #{speciality} and had over #{sales} of books."
    end
end
