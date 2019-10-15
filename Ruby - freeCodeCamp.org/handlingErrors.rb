# Create an zero division error
# num = 10 / 0
# Avoid error with rescue and begin tags
begin
    num = 10 / 0
rescue
    puts "Division by zero error"
end
# Accessing invalid index - typeError
lucky_numbers = [4, 8, 15, 16, 23, 42]
# lucky_numbers["dog"]
begin
    lucky_numbers["dog"]
rescue
    puts "Incorrect type error"
end
# To handle multiple errors
begin
    num = 10 / 0
    lucky_numbers["dog"]
rescue ZeroDivisionError
    puts "Can't divide by zero"
rescue TypeError => e
    puts e
end
