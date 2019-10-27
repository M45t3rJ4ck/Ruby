# Identify parameters
password = "rusty"
passList = []
attempts = 0
File.open("wrongpasswords.txt", "w") do |incorr_pass|
    # Collecting user input
    puts ("Please enter your password: ")
    u_password = gets.chomp
    if u_password != password
        passList.append(u_password)
        attempts += 1
        incorr_pass.write("Incorrect password #{attempts} : #{passList}\n")
        while u_password != password
            puts ("Please enter your password: ")
            u_password = gets.chomp
            passList.append(u_password)
            attempts += 1
            incorr_pass.write("Incorrect password #{attempts} : #{passList}\n")
            if u_password == password
                puts ("Success! Wrong password text updated.")
            end
        end
    end
    incorr_pass.close()
end
