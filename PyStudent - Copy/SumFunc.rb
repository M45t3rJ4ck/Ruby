# Define a function, sumAll(n) that sums all numbers from to 1 to n.
# For example, calling sumAll(10) should return the answer to 1 +2+3...+10
# The function sumAll will have to use a for loop to carry out this summation,
# and it will have to use a sum variable that increases in value over each iteration of the for loop.

print ("Please enter a number for range max limit: ")
n = gets.chomp.to_i

def sum_all(n)
    for i in (1..(n + 1))
        nums = i
        puts (nums)
    end
end
puts (sum_all(n))
