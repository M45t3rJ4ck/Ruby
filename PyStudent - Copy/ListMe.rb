listMe = []
for item in (0..4)
    print ("Please enter any item: ")
    u_in = gets.chomp.to_s
    listMe.append(u_in)
end
puts ("Your list items are: #{listMe}")
