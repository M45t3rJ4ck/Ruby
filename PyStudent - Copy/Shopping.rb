# Ask user input:
puts ("All input expected to be: Product xx.xx")
print ("Please enter the 1st item and price: ")
prod1, prc1 = gets.chomp.split()
print ("Please enter the 2nd item and price: ")
prod2, prc2 = gets.chomp.split()
print ("Please enter the 3rd item and price: ")
prod3, prc3 = gets.chomp.split()
# Define input:
prod1 = prod1.to_s
prc1 = prc1.to_f
prod2 = prod2.to_s
prc2 = prc2.to_f
prod3 = prod3.to_s
prc3 = prc3.to_f
# Define operation:
sum = prc1 + prc2 + prc3
avr = (prc1 + prc2 + prc3)/3
# Print out operations:
puts ("The total of #{prod1} & #{prod2} & #{prod3} is R#{sum.round(2)} and the average price is R#{avr.round(2)}")
