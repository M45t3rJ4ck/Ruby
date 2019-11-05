# For loop and range:
for i in (2..10)
    puts ("i = #{i}")
end
for i in (0..10)
    puts ("i = #{i}")
end
for i in (2..10)
    puts ("i = #{i}")
end
# For modulus:
i = 2
puts ((i % 2)==0)

# Print odds from 1 - 20:
for i in (1..21)
    if ((i %2)!=0)
        puts ("i = #{i}")
    end
end

# Floating point numbers:
print ("Enter you decimal amount: ")
your_float = gets.chomp.to_f
puts ("Round to 2 decimals : #{your_float.round(2)}")

# DEMONSTRATE COMPOUNDING INTEREST:
# Have user enter investment amount and interest rate:
# Ask for amount and interest rate:
print ("Enter the intial investment amount: ")
investment = gets.chomp.to_f
print ("Enter the current interest rate: ")
interest_rate = gets.chomp.to_f
# Convert the value to a float and round the percentage to 2 decimals:
interest_rate = interest_rate / 100
# Cycle through 10 years with for loop and range 0->9:
for i in (0..10)
    investment = investment + (investment * interest_rate)
end
# Output the result on screen for user:
puts ("Future value after 10 years: #{investment.round(2)}")

# WHILE LOOPS:
rand_num = Random.new.rand(1..51)
i = 1
while (i != rand_num)
    i += 1
end
puts ("The random number is: #{rand_num}")

# DRAW A PINE TREE:
# How tall is the tree in rows:
print ("Enter a number for the hight you want the tree to be: ")
tree_height = gets.chomp.to_i
# Get the starting spaces for the tree:
spaces = tree_height - 1
# Get the starting hashes:
hashes = 1
# Save the stump spaces:
stump_spaces = tree_height - 1
# Check amount of rows printed:
while tree_height != 0
    # Print spaces:
    for i in (0..spaces)
        print (" ")
    end
    # Print hashes:
    for i in (0..hashes)
        print ("#")
    end
    # Newline after each row:
    print "\n"
    # Decrement spaces:
    spaces -= 1
    # Increment hashes:
    hashes += 2
    # Decrement tree height:
    tree_height -= 1
end
# Print spaces and stump:
for i in (0..stump_spaces)
    print (" ")
end
puts ("#")