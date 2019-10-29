require 'matrix'
# With lists we can refer to groups of data in 1 name:
# [0:"string"][1:1.1234][2:28]["c"]
# List can grow and contain data of any type:
randList = ["string", 1.1234, 28]
# Create a list with range:
oneToTen = (1..10).to_a
# Can use same functions for lists as with strings:
# Conbine Lists:
randListed = randList + oneToTen
# Get ht e1st item with an index:
puts (randListed[0])
# Get the length:
print("List Length: #{randListed.length}")
# Slice list for 1st 3 items:
first3 = randListed[0..3]
# Cycle through list and print indexs:
for i in first3
    puts ("#{first3.index(i)} : #{i}")
end
# To repeat an list item:
puts (first3[0] * 3)
# To check for item in lists:
puts (first3.find{"string"})
# Get index of matching item:
puts ("Index number of string: #{first3.index("string")}")
# How many times an item appeares:
puts ("How many strings are there: #{first3.count("string")}")
# To change a list item:
first3[0] = "New String"
for i in first3
    puts ("#{first3.index(i)} : #{i}")
end
# Append a value to end of list:
first3.append("Another")
for i in first3
    print("#{first3.index(i)} : #{i}")
end
# PROBLEM -> CREATE A RANDOM LIST:
# Generate a random list of 5 values (1 - 9):
numList = []
for i in (0..5)
    numList.append(Random.new.rand(1..10))
end
for i in numList
    print(i)
end
# BUBBLE SORT A LIST:
numList = []
for i in (0..5)
    numList.append(Random.new.rand(1..10))
end
i = numList.length - 1
while i > 1
    j = 0
    while j < i
        # Tracking comparison of values:
        puts ("\nls #{numList[j]} > #{numList[j + 1]}")
        # If value on left bigger...switch:
        if numList[j] > numList[j + 1]
            puts ("Switching")
            temp = numList[j]
            numList[j] = numList[j + 1]
            numList[j + 1] = temp
        else
            puts ("Not Switching")
        end
        j += 1
        # Track changes to list:
        for k in numList
            puts ("#{k}, ")
        end
    print("End Of Round")
    i -= 1
    end
end
for k in numList
    puts ("#{k}, ")
end

# MORE FUNCTIONS:
numList = []
for i in (0..5)
    numList.append(Random.new.rand(1..9))
end
# To sort a list:
numList.sort()
# To reverse a list:
numList.reverse()
# To insert values:
numList.insert(5, 10)
# To delete a value:
numList.delete(10)
# To remove index item:
numList.pop(2)
for k in numList
    puts ("#{k}, ")
end

# LIST COMPREHENSIONS:
# To construct a list:
evenList = (0..10).select{ |i| i * 2 }
for k in evenList
    puts ("#{k}, ")
end
# List of lists:
numList = [1, 2, 3, 4, 5]
listOfValues = [
    for m in numList
        [
            Math.exp(2),
            Math.exp(3),
            Math.exp(4)
        ]
    end
]
for k in listOfValues
    puts (k)
end
# Create a 10x10 list:
multiDlist = Matrix.scalar(10, 10)
puts multiDlist.to_a.map(&:inspect)
# Get the 2nd item in list 1:
puts multiDlist[0, 1]
# Get the 2nd item in list 2:
puts multiDlist[1, 1]

# MULTIDIMENSIONAL LISTS:
# Show how indexes work:
listTable = Matrix.scalar(10, 10)
for i in (1..9)
    for j in (1..9)
        listTable[i, j] = "#{i} : #{j}"
    end
end
for i in (2..8)
    for j in (2..8)
        puts (listTable[i, j])
    end
end

# PROBLEM -> CREATE MULTIPLICATION TABLE:
# With 2 for loops fill cells using values (1 -> 9):
# Create a multidimensional list:
listTable = Matrix.scalar(10, 10)
# To increment for each row:
for i in (1..9)
    # To incement for each item in the row:
    for j in (1..9)
        # Assign value to a cell:
        listTable[i, j] = i * j
    end
end
# Output data as assigned:
for i in (2..8)
    for j in (2..8)
        puts (listTable[i, j])
    end
end
