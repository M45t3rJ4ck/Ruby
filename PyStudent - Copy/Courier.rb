#Setting costs:
air = 0.36
freight = 0.25
full_ins = 50
lim_ins = 25
a_gift = 15
n_gift = 0
priority = 100
standard = 20
#Setting Account:
travel = 0
insurance = 0
gift = 0
importance = 0
userf_cost = 0
#Determining cost to user
user_trav = false
user_sec = false
user_int = false
user_vip = false
#Getting the usr input
print ("How would you like to send the item by air? (Y or N): ")
sending = gets.chomp
if sending == "Y"
    user_trav = true
end

print ("Would you like full insurance? (Y or N): ")
safety = gets.chomp
if safety == "Y"
    user_sec = true
end

print ("Will you be sending this item as a gift? (Y or N): ")
needs = gets.chomp
if needs == "Y"
    user_int = true
end

print ("Is this delivery important? (Y or N): ")
urgency = gets.chomp
if urgency == "Y"
    user_vip = true
end

print ("Please enter the total distance in kilometers: ")
user_dist = gets.chomp.to_i
#Calculate travel cost
if user_trav == true
    travel = (air.to_f * user_dist.to_f)
else
    travel = (freight.to_f * user_dist.to_f)
end

#Calculate insurance cost
if user_sec == true
    insurance = full_ins
else
    insurance = lim_ins
end

#Calculate gift
if user_int == true
    gift = a_gift
else
    gift = n_gift
end

#Calculate importance
if user_vip == true
    importance = priority
else
    importance = standard
end

#Calculate final cost to user
userf_cost = (travel.to_f + insurance.to_f + gift.to_f + importance.to_f)
#Output Operations
print("Your total cost is: #{userf_cost.to_f}")
