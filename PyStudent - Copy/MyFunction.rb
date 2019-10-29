# Create your own function that prints all the days of the week
# Create your own function that takes in a sentence and replaces every second word with the word “Hello”

print ("Pick a number between 1 and 7 to view the day of the week, q to quit: \n")
userDay = gets.chomp.to_s
def day_name(userDay)
    days = {
        "1" => "Monday",
        "2" => "Tuesday",
        "3" => "Wednesday",
        "4" => "Thursday",
        "5" => "Friday",
        "6" => "Saturday",
        "7" => "Sunday",
        "q" => "Quit"
    }
    if userDay == "1"
        puts (days["1"])
    elsif userDay == "2"
        puts (days["2"])
    elsif userDay == "3"
        puts (days["3"])
    elsif userDay == "4"
        puts (days["4"])
    elsif userDay == "5"
        puts (days["5"])
    elsif userDay == "6"
        puts (days["6"])
    elsif userDay == "7"
        puts (days["7"])
    elsif userDay == "q"
        exit()
    end
end
puts day_name(userDay)

print ("Please enter a sentence: ")
sentence = gets.chomp
lst = []
sentence.split(" ").each_with_index do |word, index|
    if index % 2 == 0
        lst.append(word)
        lst.append("Hello")
    end
end
userString = lst.join(" ")
print(userString)
