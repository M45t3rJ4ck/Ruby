# Define basic method block
def sayhi
    puts "Hello User"
end
# Ouput code to console
puts "Top"
# Execute method
sayhi
puts "Bottom"

# Define user input defined method block
def saygoodbye(name="John", surname="Doe")
    puts ("Good Bye " + name + " " + surname)
end
puts "What is your name? "
name = gets.chomp()
puts "What is your surname? "
surname = gets.chomp()
saygoodbye(name, surname)
