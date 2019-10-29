# User can enter any random number or letter, letter will kick out an error:
print ("Please enter a number: ")
number = gets.chomp.to_i
puts (number)

# User can only enter a number:
while true
    begin
        print ("Please enter a number:")
        number = gets.chomp.to_i
        break
    rescue ValueError
        puts ("You didn't enter a number!")
    else
        puts ("An unkown error occured!")
    end
puts ("Thank you for entering a number!")
end

# IMPLIMENT DO WHILE LOOP:
# do
#   ...CODING...
# while(condition)
# Make user guess a number between 1 -> 10:
secret_number = 6
while true
    begin
        print ("Please guess a number between 1 and 10: ")
        guess_number = gets.chomp.to_i
    rescue ValueError
        puts ("You didn't guess a number!")
    else
        puts ("An unkown error occured!")
    end
    if guess_number != secret_number
        puts ("Your choice was incorrect, please guess again!")
    elsif guess_number == secret_number
        puts ("You guessed the correct number!!")
        break
    end
puts ("Thank you for playing!")
end

# MATH MODULE:
num1 = 9.6358
# Reference to different functions in module:
puts ("ceil(9.6358) = #{num1.ceil(2)}")
puts ("floor(9.6358) = #{num1.floor(2)}")
puts ("fabs(-9.6358) = #{num1.abs}")
# Factorial = 1*2*3*4(up to number set):
def fact(num)
    (1..num).reduce(:*) || 1
end
puts ("factorial(9.6358) = #{fact(num1)}")
# Return remainder of division:
puts ("fmod(9.6358) = #{num1.remainder(2)}")
# Receive a float and return an integer:
puts ("trunc(9.6358) = #{num1.truncate(2)}")
# Returns x^y:
puts ("pow(9.6358) = #{Math.exp(num1)}")
# Return square root:
puts ("sqrt(9.6358) = #{Math.sqrt(num1)}")
# Special Values:
puts ("math e = #{Math::E}")
puts ("math pi = #{Math::PI}")
# Return logarithm:
puts ("log(9.6358) = #{Math.log(num1)}")
# Defining the base:
puts ("log2(9.6358) = #{Math.log2(num1)}")
puts ("log10(9.6358) = #{Math.log10(num1)}")
# Converts degrees to radians and vise versa:
puts ("degrees(9.6358) = #{num1 * (180 / Math::PI)}")
puts ("radians(9.6358) = #{num1 * (Math::PI / 180)}")
# Other trig functions:
# sin, cos, tan, asin, acos, atan, atan2, asinh, a cosh, atanh, sinh, cosh, tanh:

# ACCURATE FLOATING POINT CALCULATIONS:
# Decimal module that provides accurate calculations:
sum = (0).to_f
sum += ("0.01").to_f
sum += ("0.01").to_f
sum += ("0.01").to_f
sum -= ("0.03").to_f
puts ("sum = #{sum}")
# Stirng -> store text as data type:
puts ((9).class)
puts ((9.63).class)
# Single or double quotes used for strings:
puts (("9").class)
puts (('9').class)

samp_string = "This is a very important string"
# Get character by referencing the index:
puts (samp_string[0])
# Last character:
puts (samp_string[-1])
# Addition to set character:
puts (samp_string[9 + 6])
# Get a slice of index:
puts (samp_string[0..6])
# Starting at set index:
puts (samp_string[9..-1])
# Join strings:
puts ("Green" + "Egg")
# Repeat strings:
puts ("Hello" * 6)
# Cycle through each character:
for char in samp_string.each_char
    puts (char)
end
# Cycle through characters in pairs:
# Subtract 1 from index length as string index starts at 0:
# Use range and increment by 2:
for i in ((0..samp_string.length - 1).step(2))
    puts (samp_string[i].to_s + samp_string[i + 1].to_s)
end
# Unicode assigned to characters:
# A-Z = 65 -> 90 and a-z = 91 -> 122:
# Get the Unicode with ord:
puts ("A = #{("A").ord}")
# Convert the Unicode with chr:
puts ("66 = #{(66).chr}")

# PROBLEM - THE SECRET STRING:
# Receive uppercase string and hide meaning in Unicode:
print ("In uppercase, enter a sentence: ")
norm_string = gets.chomp.to_s
secret_string = ""
for char in norm_string.each_char
    secret_string += char.ord.to_s
end
puts ("Secret Message is: #{secret_string}")
# Then translate back into original meaning:
norm_string = ""
for i in ((0..secret_string.length - 1).step(2))
    char_code = secret_string[i].to_s + secret_string[i + 1].to_s
    norm_string += (char_code.to_i).chr
end
puts ("Original Message was: #{norm_string}")

# SUPER PROBLEM:
# Make it work with upper- and lower-case:
print ("Enter a sentence: ")
norm_string = gets.chomp.to_s
secret_string = ""
for char in norm_string.each_char
    secret_string += ((char.ord) - 32).to_s
end
puts ("Secret Message is: #{secret_string}")
# Then translate back into original meaning:
norm_string = ""
for i in ((0..secret_string.length - 1).step(2))
    char_code = secret_string[i].to_s + secret_string[i + 1].to_s
    norm_string += ((char_code.to_i) + 32).chr
end
puts ("Original Message was: #{norm_string}")