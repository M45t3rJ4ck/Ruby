#Setting Variables & Collecting input
print ("Please enter the initial deposit amount: ")
principal = gets.chomp.to_f
print ("Please enter the initial interest rate: ")
interestRate = gets.chomp.to_f
print ("Please enter the initial years of investment: ")
yearsTime = gets.chomp.to_f
print ("Is this simple or compound investment: ")
investment = gets.chomp.downcase.to_s
rate = interestRate / 100
#Setting Operation
if investment == "simple"
    savings = principal + (principal * rate * yearsTime)
    puts savings.to_f.round(2)
elsif investment == "compound"
    print ("Number of compound per year: ")
    numCompund = gets.chomp.to_f
    savings = (principal * ((1 + rate / numCompund) ** (numCompund * yearsTime)))
    puts savings.to_f.round(2)
else
    print ("Make sense please")
end
