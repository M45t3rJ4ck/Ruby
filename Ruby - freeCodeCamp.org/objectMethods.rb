# Create own datatype
class Student
    attr_accessor :name, :major, :gpa
    def initialize(name, major, gpa)
        @name = name
        @major = major
        @gpa = gpa
    end
    def has_honors
        if @gpa >= 3.5
            return true
        else
            return false
        end
    end
end
# Define objects
student1 = Student.new("Jim", "Bussiness", 2.6)
student2 = Student.new("Pam", "Art", 3.6)
# Output code to console
puts student1.has_honors
puts student2.has_honors