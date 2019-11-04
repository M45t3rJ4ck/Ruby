# Declareing Boolean & variables:
upCase = false
up_caseChk = ""
lowCase = false
low_caseChk = ""
haveNum = false
hav_numChk = ""
haveLenght = true
hav_lengChk = ""
three_case = false
passCorr = false

# Operations:
puts ("Welcome to password checker")

# Calculating user input:
print("Does your password contain 2 uppercase letters?(Y or N): ")
up_caseChk = gets.chomp.to_s
up_caseChk = up_caseChk.upcase
if up_caseChk == "Y"
    upCase = true
end

print ("Does your password contain 2 lowercase letters?(Y or N): ")
low_caseChk = gets.chomp.to_s
low_caseChk = low_caseChk.upcase
if low_caseChk == "Y"
    lowCase = true
end

print ("Does your password contain 2 numbers?(Y or N): ")
hav_numChk = gets.chomp.to_s
hav_numChk = hav_numChk.upcase
if hav_numChk == "Y"
    haveNum = true
end

print ("Does password contain 6 or more characters?(Y or N): ")
hav_lengChk = gets.chomp.to_s
hav_lengChk = hav_lengChk.upcase
if haveLenght == "Y"
    haveLenght = true
end

# Formating user input:
if upCase and lowCase and haveNum == true
    three_case = true
end
if upCase and lowCase and haveLenght == true
    three_case = true
end
if upCase and haveNum and haveLenght == true
    three_case = true
end
if lowCase and haveNum and haveLenght == true
    three_case = true
end

# Validating user input:
if three_case == true
    passCorr = true
    puts ("You have choosen suitable password.")
else
    puts ("You have not choosen a suitable password.")
end