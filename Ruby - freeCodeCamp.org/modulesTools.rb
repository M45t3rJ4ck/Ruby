# Define custom module contain 2 methods
module Tools
    def sayhi(name)
        puts "Hello #{name}."
    end
    def saybye(name)
        puts "Bye #{name}."
    end
end
# To use modules elsewhere
# include Tools
# Call module to execute
# puts "Line 1:"
# Tools.sayhi("Riaan")
# puts "Line 2:"
# Tools.saybye("Riaan")
