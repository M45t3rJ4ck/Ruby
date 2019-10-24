# Write a program with two compilation errors, a runtime error and a logical error.
# Next to each error, add a comment that explains what type of error it is and why it occurs.

# Compilation error - name defined after main block
for x in (1..10)
    if y == 1
        print(x * y)
    end
end

y = 0

# Logical error - Zero division error
for x in (1..10)
    if y == 1
        puts (x * y)
    end
end
