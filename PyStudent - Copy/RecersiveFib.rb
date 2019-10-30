# Print out the first n Fibonacci numbers, using the previous Fibonacci function is useful. 
# Do this recursively, NO LOOPS.

print ("Enter a number to start the fibonacci sequence: ")
n = gets.chomp.to_i

def fib(n)
    if n == 0
        return 0
    elsif n == 1
        return 1
    else
        result = fib(n - 1) + fib(n - 2)
        return result
    end
end
puts (fib(n))
