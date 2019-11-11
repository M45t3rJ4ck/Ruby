print ("Enter a Number: ")
num1 = gets.chomp.to_i
def mult_by_2(num1)
    return num1 * 2
end
puts ("1) #{num1} * 2 = #{mult_by_2(num1)}")

# A function can be:
# 1. Assigned to another name:
times_two = self.method(:mult_by_2).to_proc
print ("Enter another Number: ")
num2 = gets.chomp.to_i
puts ("2) #{num2} * 2 = #{times_two.call(num2)}")

# 2. Passed into other functions:
print ("Enter another Number: ")
num3 = gets.chomp.to_i
def do_math(num3)
    return mult_by_2(num3)
end
puts ("3) #{num3} * 2 = #{do_math(num3)}")

# 3. Returned from a function:
print ("Enter another Number: ")
num4 = gets.chomp.to_i
print ("Enter another Number: ")
num5 = gets.chomp.to_i
def get_func_mult_by_num(num4, num5)
    # Create a dynamic function that will receive a value and then return that value times the value passed into:
    # getFuncMultByNum()
    def mult_by(num4, num5)
        return num4 * num5
    end
    return mult_by(num4, num5)
end
generated_func = self.method(:get_func_mult_by_num).to_proc
puts ("4) #{num4} * #{num5} = #{generated_func.call(num4, num5)}")


# ---------- PROBLEM ----------
# Create a function that receives a list and a function. 
# The function passed will return True or False if a list value is odd.
# The surrounding function will return a list of odd numbers.
def is_it_odd(i)
    if i % 2 == 0
        return false
    else
        return true
    end
end
def change_list(aList, is_it_odd)
    oddList = []
    for i in aList
        if is_it_odd(i)
            oddList.append(i)
        end
    end
    return oddList
end
aList = (1..21)
puts ("5) #{change_list(aList, is_it_odd(aList))}")


# ---------- FUNCTION ANNOTATIONS ----------
# It is possible to define the data types of attributes and the returned value with annotations, but they have no
# impact on how the function operates, but instead are for documentation.

def random_func(name = String, age = Integer, weight = Float)
    print("Name: ", name)
    print("Age: ", age)
    print("Weight: ", weight)
    return "6) #{name} is #{age} years old and weighs #{weight}"
end
puts ("7) #{random_func("Derek", 41, 165.5)}")

# You don't get an error if you pass bad data:
puts ("8) #{random_func(89, "Derek", "Turtle")}")

# ---------- ANONYMOUS FUNCTIONS : LAMBDA ----------
# lambda is like def, but rather then assign the function to a name it just returns it. Because there is no name
# that is why they are called anonymous functions. You can however assign a lambda function to a name.
# This is their format lambda arg1, arg2,... : expression using the args. Lambdas are used when you need a small
# function, but don't want to junk up your code with temporary function names that may cause conflicts.
# Add values:
print ("Enter a Number: ")
num6 = gets.chomp.to_i
print ("Enter another Number: ")
num7 = gets.chomp.to_i
sum = lambda do |num6, num7|
    puts ("9) The sum of #{num6} + #{num7} is: #{num6 + num7}")
end
sum.call(num6, num7)
# Use a ternary operator to see if someone can vote:
print ("Enter your age: ")
age = gets.chomp.to_i
can_vote = lambda do |age| 
    if age >= 18
        puts true
    else 
        puts false
    end
end
can_vote.call(age)

# Create a list of functions:
powerList = [
    lambda do |x|
        puts "10) #{x} ** 2 = #{x ** 2}"
    end,
    lambda do |x|
        puts "11) #{x} ** 3 = #{x ** 3}"
    end,
    lambda do |x|
        puts "12) #{x} ** 4 = #{x ** 4}"
    end
]
print ("Enter a Number: ")
num8 = gets.chomp.to_i
# Run each function on a value:
for func in powerList
    func.call(num8)
end


# You can also store lambdas in dictionaires:
attack = {
    'quick' => lambda do puts "13) Quick Attack" end,
    'power' => lambda do puts "14) Power Attack" end,
    'miss' => lambda do puts "15) The Attack Missed" end
}
attack['quick']
# You could get a random dictionary as well for say our previous warrior objects
# keys() returns an iterable so we convert it into a list
# choice() picks a random value from that list
attackKey = attack.keys.sample
attack[attackKey]

# ---------- PROBLEM ----------
# Create a random list filled with the characters H and T for heads and tails. 
# Output the number of Hs and Ts.
# Example Output
# Heads :  46
# Tails :  54
# Create the list:
flipList = []

# Populate the list with 100 Hs and Ts:
# Trick : random.choice() returns a random value from the list:
for i in (1..100)
    flipList.append(["H", "T"].sample(i))
end

# Output results
puts ("16) Heads: #{flipList.count('H')}")
puts ("17) Tails: #{flipList.count('T')}")


# ---------- MAP ----------
# Map allows us to execute a function on each item in a list
# Generate a list from 1 to 10
def oneTo10
    numbers = (1..11)
    for num in numbers
        return num
    end
end
# The function to pass into map
def dbl_num(num)
    return num * 2
end
# Pass in the function and the list to generate a new list
puts ("18) #{(dbl_num(oneTo10))}")
# You could do the same thing with a lambda
puts ("19) #{lambda do puts "#{oneTo10 * 3}" end}")
# You can perform calculations against multiple lists
bList = [
    lambda do |x, y|
        x = [1, 2, 3], 
        y = [1, 2, 3]
        puts "#{x} + #{y} = #{x + y}"
    end
].map
puts ("20) #{bList}")

# ---------- FILTER ----------
# Filter selects items from a list based on a function 
# Print out the even values from a list
puts (
    lambda do |x|
        for x in (1..10)
            if x % 2 == 0
                return x
            end
        end
    end
)

# ---------- PROBLEM ----------
# Find the multiples of 9 from a random 100 value list with values between 1 and 1000
# Generate a random list with randint between 1 and 1000
# Use range to generate 100 values
randList = [
    for i in (1..1000)
        if i % 9 == 0
            mult_9 = Array.new(100) {i}
        end
    end
]
puts  mult_9

# ---------- REDUCE ----------
# Reduce receives a list and returns a single result:
# Add up the values in a list:
puts ([1, 2, 3, 4, 5, 6].reduce(0) {|x, y| x + y})
