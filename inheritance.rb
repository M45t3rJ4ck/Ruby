# Create generic class containing 3 methods
class Chef
    def make_chicken
        puts "The chef made chicken."
    end
    def make_salad
        puts "The chef made salad."
    end
    def make_special_dish
        puts "The chef made a bbq ribs."
    end
end
# Create class to inherite methods from
class ItalianChef < Chef
    def make_special_dish
        puts "The chef made eggplant parm."
    end
    def make_pasta
        puts "The chef made spaghetti and meatballs."
    end
end
# Create new instance of class
chef1 = Chef.new()
puts "Line 1:"
chef1.make_chicken
chef1.make_special_dish

chef2 = ItalianChef.new()
puts "Line 2:"
chef2.make_salad
chef2.make_special_dish
chef2.make_pasta
