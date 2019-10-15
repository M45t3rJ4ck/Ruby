# Create return statement for a cube function
def cube(num)
    num * num * num
    5
end
# Output code to console
puts "Line 1:"
puts cube(3)
# Create return statement for a cube function
def cubed(num)
    return num * num * num
    5
end
# Output code to console
puts "Line 2:"
puts cubed(3)
# Create return statement for a cube function
def cubez(num)
    return num * num * num, 70
    5
end
# Output code to console
puts "Line 3:"
puts cubez(3)[1]
