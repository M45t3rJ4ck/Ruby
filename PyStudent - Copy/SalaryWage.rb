# User sales or management:
userID = ""
hours = 0
sales = 0
manager = false
saleson = false

# Collecting user input:
print ("Are you employed as Management?(Y or N): ")
userID = gets.chomp
userID = userID.upcase
if userID == "Y"
    print ("How many hours have you worked this month? ")
    hours = gets.chomp.to_i
    manager = true
    if manager == true
        gross_sal = hours * 40
        puts ("Manager Salary = R#{gross_sal}")
    end
elsif userID == "N"
    print ("What was your gross sales this month? ")
    sales = gets.chomp.to_i
    saleson = true
    if saleson == true
        wage_sal = ((sales * 8) / 100) + 2000
        puts ("Saleson Wage = R#{wage_sal}")
    end
end
