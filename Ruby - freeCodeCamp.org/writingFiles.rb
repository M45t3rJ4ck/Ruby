# To appened new line to end of file
File.open("writingFiles.txt", "a") do |file|
    puts "Line 1:"
    print "Enter new employee name: "
    name = gets.chomp()
    print "Enter new employee department: "
    department = gets.chomp()
    file.write("\n" + name + ", " + department)
    puts "Done writing to file."
end
# To write to file
File.open("writingFiles1.txt", "w") do |file|
    puts "Line 2:"
    print "Enter new employee name: "
    emp_name = gets.chomp()
    print "Enter new employee department: "
    emp_dept = gets.chomp()
    file.write("\n" + emp_name + ", " + emp_dept)
    puts "Done writing to file."
end
