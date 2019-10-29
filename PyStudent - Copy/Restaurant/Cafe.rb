# Create a list called menu, which should contain at least 4 items in the cafe.
# Next, create a dictionary called stock, which should contain the stock value for each item on your menu.
# Create another dictionary called price, which should contain the prices for each item on your menu.
# Next, create a function which will calculate the total stock worth in the cafe. 
# You will need to remember to loop through the appropriate dictionaries and lists to do this.
# Finally, print out the result of your function.

# Create stock menu to know when no Food & Beverage supply left
stock = {
    "beans" => 100,
    "bags" => 100,
    "ham_cheese" => 100,
    "ice_cream" => 100
}

# Create Food & Beverage Menu to display options and acquire prices from
fb_menu = {
    "Americano" => 18,
    "Rooibos" => 15,
    "Sandwich" => 25,
    "Waffle" => 22
}

# Main menu selection for client
def print_menu
    puts ("1. Start a new table?")
    puts ("2. Place an order?")
    puts ("3. Call customer table?")
    puts ("4. Print Bill")
    puts ("5. Quit")
    puts ()
end

# Main function
def waitron(stock, fb_menu)
    # Initialize main menu selection
    menu_choice = 0
    filename = ""
    # Loop through main menu selection
    while menu_choice != 5
        # Output main menu selection for client
        print_menu()
        # Acquire client selection
        if filename == ""
            puts ("Welcome, please enter a number: ")
        else
            puts ("#{filename}, please enter a number: ")
        end
        # Cycle through to acquire client selection
        menu_choice = gets.chomp.to_i
        # If new client
        if menu_choice == 1
            # Acquire client name for file
            puts ("Customer name to save: ")
            # Save client name as file table
            filename = gets.chomp.to_s
            guest = File.new(filename, "w")
        # Cycle through selection of Food & Beverage menu
        elsif menu_choice == 2
            out_table = File.open(filename, "a")
            choice = 1
            # Cycle through to acquire client selection
            puts ("Your options are: ")
            for i in fb_menu.each_key
                puts (choice.to_s + ". " + i)
                choice += 1
            end
            puts (choice.to_s + ". " + "Quit")
            # Save client selection to proceed with operation
            choice = gets.chomp.to_i
            # Initialze procedure of option
            if choice == 1
                out_table.puts ("Americano \t #{fb_menu["Americano"]} \n")
                # Adjust stock level to new lower level
                stock["beans"] -= 1
            # Initialze procedure of option
            elsif choice == 2
                out_table.puts ("Rooibos \t #{fb_menu["Rooibos"]} \n")
                # Adjust stock level to new lower level
                stock["bags"] -= 1
            # Initialze procedure of option
            elsif choice == 3
                out_table.puts ("Sandwich \t #{fb_menu["Sandwich"]} \n")
                # Adjust stock level to new lower level
                stock["ham_cheese"] -= 1
            # Initialze procedure of option
            elsif choice == 4
                out_table.puts ("Waffle \t #{fb_menu["Waffle"]} \n")
                # Adjust stock level to new lower level
                stock["ice_cream"] -= 1
            # Initialze procedure of option
            elsif choice == 5
                # Exit sub menu
                exit
            end
        # Acquire client name to load file
        elsif menu_choice == 3
            # Acquire file to start adding to bill
            puts ("Customer name to load: ")
            # Save client selection for printing of bill
            filename = gets.chomp.to_s
        # Option for client bill printing
        elsif menu_choice == 4
            # Initialize print file for client
            orders = {}
            prices = []
            totalCost = 0
            File.open(filename, "r") do |out_table|
                orders = out_table.read.split("\n").sort
                for order in orders
                    price = /\d\d/
                    prices.push(order.match(price).to_s)
                end
                for cost in prices.each
                    puts cost.to_i
                    totalCost += cost.to_f
                end
            end
            puts "Your total items are #{orders.length} and cost is #{totalCost.round(2)}."
            puts ()
            menu_choice = 5
        # Provide option to exit menu
        elsif menu_choice == 5
            # Exit menu
            puts ("Thank you for visiting #{filename}, please come again.")
            out_table.close()
            exit
        else
            print_menu()
        end
    end
end

# Call main function
puts waitron(stock, fb_menu)
