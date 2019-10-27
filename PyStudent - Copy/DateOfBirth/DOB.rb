# Open file containing list of people details and sort
file = []
people = {}
# Open file in read & write mode
File.open("DOB.txt", "r") do |f|
    file = f.read.split("\n").sort
    file.each_with_index do |person, index|
        people.store(index, person)
    end
end

names = {}
dates = {}
for person in people
    name = /\w+\s\w+/i
    date = /\d+\s\w+\s\d+/i
    names.store(person[0], person[1].match(name).to_s)
    dates.store(person[0], person[1].match(date).to_s)
end
puts "Line 1:"
puts names
puts "Line 2:"
puts dates
