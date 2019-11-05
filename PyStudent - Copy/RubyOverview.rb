# Hello world is just one line of code puts() outputs data to the screen, each on their own line:
puts ("Hello World")

=begin
This is a multi-line comment
=end

# A variable is a place to store values it's name is like a label for that value:
name = "Derek"
puts (name)

# A variable name can contain letters, numbers, or _ but can't start with a number:
# There are 5 data types Numbers, Strings, List, Dictionary:
# You can store any of them in the same variable:
age = 15
puts (age.to_s)

# The arithmetic operators +, -, *, /, %, **, //, ** Exponential calculation, // Floor Division:
num1 = 5
num2 = 2
puts ("5 + 2 = #{num1 + num2}")
puts ("5 - 2 = #{num1 - num2}")
puts ("5 * 2 = #{num1 * num2}")
puts ("5 / 2 = #{num1 / num2}")
puts ("5 % 2 = #{num1 % num2}")
puts ("5 ** 2 = #{num1 ** num2}")
puts ("5 // 2 = #{num1 // num2}")

# Order of Operation states */ to be performed before +-:
num3 = 1
num4 = 3
puts ("1 + 2 - 3 * 2 = #{num3 + num2 - num4 * num2}")
puts ("(1 + 2 - 3) * 2 = #{(num3 + num2 - num4) * num2}")

# A string is a string of characters surrounded by " or ':
# If you must use a " or ' between the same quote escape it with \:
quote = "\"Always remember your unique,"

# A multi-line quote:
multi_line_quote
<<-eos 
just
like everyone else
eos
puts (quote + multi_line_quote)
# To embed a string in output use %s:
puts ("%s %s" % ['I like the quote', 'quote, multi_line_quote'])
# To keep from printing newlines use end="":
print("I don't like ")
puts ("newlines")
# You can print a string multiple times with *:
puts ("\n" * 5)


# LISTS:
# A list allows you to create a list of values and manipulate them:
# Each value has an index with the first one starting at 0:
grocery_list = ['Juice', 'Tomatoes', 'Potatoes', 'Bananas']
puts ("The first item is #{grocery_list[1]}")
# You can change the value stored in a list box:
grocery_list[0] = "Green Juice"
puts (grocery_list)
# You can get a subset of the list with [min:up to but not including max]:
puts (grocery_list[1..3])
# You can put any data type in a a list including a list:
other_events = ['Wash Car', 'Pick up Kids', 'Cash Check']
to_do_list = [other_events, grocery_list]
puts (to_do_list)
# Get the second item in the second list (Boxes inside of boxes):
puts (to_do_list[1, 1])
# You add values using append:
grocery_list.append('onions')
puts (to_do_list)
# Insert item at given index:
grocery_list.insert(1, "Pickle")
# Remove item from list:
grocery_list.remove("Pickle")
# Sorts items in list:
grocery_list.sort()
# Reverse sort items in list:
grocery_list.reverse()
# del deletes an item at specified index:
del grocery_list[4]
puts (to_do_list)
# We can combine lists with a +:
to_do_list = other_events + grocery_list
puts (to_do_list)
# Get length of list:
puts (to_do_list.length)
# Values in a tuple can't change like lists:
pi_tuple = [3, 1, 4, 1, 5, 9]
# Convert tuple into a list:
new_tuple = pi_tuple.to_a


# Hash:
# Made up of values with a unique key for each value:
# Similar to lists, but you can't join dicts with a +:
super_villains = {
    "Fiddler" => "Isaac Bowin",
    "Captain Cold" => "Leonard Snart",
    "Weather Wizard" => "Mark Mardon",
    "Mirror Master" => "Sam Scudder",
    "Pied Piper" => "Thomas Peterson"
}
puts (super_villains['Captain Cold'])
# Delete an entry:
super_villains['Fiddler'].delete
puts (super_villains)
# Replace a value:
super_villains['Pied Piper'] = 'Hartley Rathaway'
# Print the number of items in the dictionary:
puts (super_villains.length)
# Get the value for the passed key:
puts (super_villains.find("Pied Piper"))
# Get a list of dictionary keys:
puts (super_villains.keys)
# Get a list of dictionary values:
puts (super_villains.values)


# CONDITIONALS:
# The if, else and elif statements are used to perform different actions based off of conditions:
# Comparison Operators : ==, !=, >, <, >=, <= :
# The if statement will execute code if a condition is met:
# White space is used to group blocks of code in Ruby:
# Use the same number of proceeding spaces for blocks of code:
age = 30
if age > 16
    puts ('You are old enough to drive')
end
# Use an if statement if you want to execute different code regardless of whether the condition ws met or not:
if age > 16
    puts ('You are old enough to drive')
else
    puts ('You are not old enough to drive')
end
# If you want to check for multiple conditions use elif:
# If the first matches it won't check other conditions that follow:
if age >= 21
    puts ('You are old enough to drive a tractor trailer')
elsif age >= 16
    puts ('You are old enough to drive a car')
else
    puts ('You are not old enough to drive')
end
# You can combine conditions with logical operators:
# Logical Operators : and, or, not:
if (age >= 1) and (age <= 18)
    puts ("You get a birthday party")
elsif (age == 21) or (age >= 65)
    puts ("You get a birthday party")
elsif not(age == 30)
    puts ("You don't get a birthday party")
else
    puts ("You get a birthday party yeah")
end

# FOR LOOPS:
# Allows you to perform an action a set number of times:
# Range performs the action 10 times 0 - 9:
for x in (0..10)
    puts ("#{x} ")
end
# You can use for loops to cycle through a list:
grocery_list = ['Juice', 'Tomatoes', 'Potatoes', 'Bananas']
for y in grocery_list
    puts (y)
end
# You can also define a list of numbers to cycle through:
for x in [2, 4, 6, 8, 10]
    puts (x)
end
# You can double up for loops to cycle through lists:
num_list = [[1, 2, 3], [10, 20, 30], [100, 200, 300]]
for x in (0..3)
    for y in (0..3)
        print(num_list[x, y])
    end
end

# WHILE LOOPS:
# While loops are used when you don't know ahead of time how many times you'll have to loop:
random_num = Random.new.rand(0..100)
while random_num != 15
    puts (random_num)
    random_num = Random.new.rand(0..100)
end
# An iterator for a while loop is defined before the loop:
i = 0
while i <= 20
    if i % 2 == 0
        puts (i)
    elsif i == 9
        # Forces the loop to end all together:
        break
    else
        # Shorthand for i = i + 1:
        i += 1
        # Skips to the next iteration of the loop:
        continue
    i += 1
    end
end

# FUNCTIONS:
# Functions allow you to reuse and write readable code:
# Type def (define), function name and parameters it receives:
# return is used to return something to the caller of the function:
def add_numbers(f_num, s_num)
    sum_num = f_num + s_num
    return sum_num
end
puts (add_numbers(1, 4))
# Can't get the value of rNum because it was created in a function:
# It is said to be out of scope:
# print(sum_num)
# If you define a variable outside of the function it works every place:
new_num = 0
def sub_numbers(f_num, s_num)
    new_num = f_num - s_num
    return new_num
end
puts (sub_numbers(1, 4))

# USER INPUT:
puts ('What is your name?')
name = gets.chomp.to_s
# Stores everything typed up until ENTER:
print('Hello', name)


# STRINGS:
# A string is a series of characters surrounded by ' or ":
long_string = "I'll catch you if you fall - The Floor"
# Retrieve the first 4 characters:
puts (long_string[0..4])
# Get the last 5 characters:
puts (long_string[-5])
# Everything up to the last 5 characters:
puts (long_string[0..-5])
# Concatenate part of a string to another:
puts ("#{long_string[0..4]} be there")
# String formatting:
puts ("%s is my %s letter and my number %s number is %.5f" % ['X', 'favorite', 1, 0.14])
# Capitalizes the first letter:
puts (long_string.capitalize)
# Returns the index of the start of the string case sensitive:
puts (long_string.find("Floor"))
# Returns the string length:
puts (long_string.length)
# Replace the first word with the second (Add a number to replace more):
puts (long_string.gsub!("Floor", "Ground"))
# Remove white space from front and end:
puts (long_string.strip())
# Split a string into a list based on the delimiter you provide:
quote_list = long_string.split(" ")
puts (quote_list)


# FILE I/O:
# Overwrite or create a file for writing:
test_file = File.open("test.txt", "w+")
# Get the file mode used:
puts (test_file.mode)
# Get the files name:
puts (test_file.name)
# Write text to a file with a newline:
test_file.write(bytes("Write me to the file", 'UTF-8'))
# Close the file:
test_file.close()
# Opens a file for reading and writing:
test_file = File.open("test.txt", "r+")
# Read text from the file:
text_in_file = test_file.read()
test_file.close()
puts (text_in_file)


# CLASSES AND OBJECTS:
# The concept of OOP allows us to model real world things using code:
# Every object has attributes (color, height, weight) which are object variables:
# Every object has abilities (walk, talk, eat) which are object functions:
class Animal
    attr_accessor :name, :height, :weight, :sound
    # The constructor is called to set up or initialize an object self allows an object to refer to itself inside of the class:
    def initialize(name, height, weight, sound)
        @name = name
        @height = height
        @weight = weight
        @sound = sound
    end
    def set_name(name)
        @name = name
    end
    def set_height(height)
        @height = height
    end
    def set_weight(height)
        @height = height
    end
    def set_sound(sound)
        @sound = sound
    end
    def get_name
        return @name
    end
    def get_height
        return @height.to_s
    end
    def get_weight
        return @weight.to_s
    end
    def get_sound
        return @sound
    def get_type
        puts ("Animal")
    end
    def sentence
        return "#{name} is #{height}cm tall and #{weight}kg and says #{sound}."
    end
end

# How to create a Animal object:
cat = Animal.new('Whiskers', 33, 10, 'Meow')
puts (cat.sentence)

# INHERITANCE:
# You can inherit all of the variables and methods from another class:
class Dog < Animal
    def initialize(owner, animal_type)
        @owner = owner
        @animal_type = None
    end
    def set_owner(owner)
        @owner = owner
    end
    def get_owner
        return @owner
    end
    def get_type
        puts ("Dog")
    end
    # We can overwrite functions in the super class:
    def sentence
        return "#{name} is #{height}cm tall and #{weight}kg and says #{sound}. His owner is #{owner}."
    end
    # You don't have to require attributes to be sent, this allows for method overloading:
    def multiple_sounds(how_many=none)
        if how_many == none
            puts (get_sound)
        else
            puts (get_sound * how_many)
        end
    end
end

spot = Dog.new("Spot", 53, 27, "Ruff", "Derek")
puts (spot.sentence)

# Polymorphism allows use to refer to objects as their super class and the correct functions are called automatically:
class AnimalTesting
    def get_type(animal)
        animal.get_type()
    end
end

test_animals = AnimalTesting.new
test_animals.get_type(cat)
test_animals.get_type(spot)
