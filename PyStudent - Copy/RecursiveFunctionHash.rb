# DICTIONARIES:
# Lists organize data based on sequential indexes:
# Dictionaries use keys/value pairs:
# Create a dictionary:

namedict = {
    "fname" => "Riaan",
    "mname" => "Willem Adriaan",
    "lname" => "Voges",
    "address" => "Bosmanstraat 48"
}
# Get value using key:
puts ("My Name: #{namedict["fname"]}")
# Change value with key"
namedict["address"] = "48 Bosman Street"
# Dictionaries are created out of order and will print as such:
puts (namedict)
# Adding a key and value:
namedict["city"] = "Kuilsrivier"
# Check in keys exists:
puts (namedict.values)
# Check list of keys:
puts (namedict.keys)
# Get keys and values of items:
namedict.each do |keys, values|
    puts (keys) 
    puts (values)
end
# Get value associated with keys:
puts (namedict.fetch("mname"))
# Delete a key value:
namedict.delete("fname")
# Loop through the keys:
for i in namedict.keys
    puts(i)
end
# Delete all entries:
namedict.clear
# Holding list dictionaries:
employees = []
# Input employee data:
print ("Enter employee name: ")
fname, lname = gets.chomp.split(" ")
employees.append("fname => #{fname}, lname => #{lname}")
puts (employees)

# PROBLEM -> CREATE A CUSTOMER LIST:
# Create List(array) of customer outside for loop:
customer = []
# Create a loop
while true
    # Get input and make it work for y or n:
    print ("Enter a new customer?(Y/N): ")
    createntry = gets.chomp
    createntry = createntry[0].downcase
    if createntry == "n"
        # Check to leave loop:
        break
    else
        # Get customer data:
        print ("Enter new customer first and last name: ")
        fname, lname = gets.chomp.split()
        # Add customer data to list:
        customer.append("fname: #{fname}, lname: #{lname}")
    end
end
# Print customer data:
for cust in customer
    puts ("#{cust[fname]} #{cust[lname]}")
end

# RECURSIVE FUNCTIONS:
# A function refering to itself inside itself:
def factorial(num)
    # Every function to contain condition to cease itself:
    if num <= 1
        return 1
    else
        result = num * factorial(num - 1)
        return result
    end
end
puts (factorial(4))


# PROBLEM -> CALCULATE FIBONACCI NUMBERS:
# To calculate sum the previous 2 numbers:
def fibonacci(num)
    if num == 0
        return 0
    elsif num == 1
        return 1
    else
        result = fibonacci(num - 1) + fibonacci(num - 2)
        return result
    end
end
puts (fibonacci(3))
