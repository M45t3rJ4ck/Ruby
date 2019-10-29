# Write a program that can convert a binary number to a decimal number.
# A binary number is basically a number that is made up entirely of 0s and 1s (e.g 101101)
# You can represent any amount you would like using binary.
# Ask the user to enter a binary number and convert that number to a decimal number.
# You can visit the following site to find out how to convert from binary to decimal:
# Print out the decimal value of the number.
# Remember to make use of the built-in functions found in the math module as well as lists.

puts ("Please enter your decimal number to convert: ")
dec2bin = gets.chomp
dec2bin = "%b" % dec2bin
puts (dec2bin.reverse)
puts ("Please enter your binary number to convert: ")
bin2dec = gets.chomp.to_i(2)
puts (bin2dec)
