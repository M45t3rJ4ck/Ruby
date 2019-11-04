# ---------- LEARN TO PROGRAM 9 ----------
# Real world objects have attributes and capabilities.
# A dog for example has the attributes of height, weight favorite food, etc.
# It has the capability to run, bark, scratch, etc.
# In object oriented programming we model real world objects be defining the attributes (fields) and capabilities (methods) that they have.
# A class is the template used to model these objects.
# Here we will model a Dog object.

class Dog
    # The init method is called to create an object:
    # We give default values for the fields if none are provided:
    attr_accessor :name, :height, :weight
    # Define what happens when the Dog is asked to demonstrate its capabilities:
    def run
        print("#{@name} the dog runs")
    end
    def eat
        print("#{@name} the dog eats")
    end
    def bark
        print("#{@name} the dog barks")
    end
end
# Create a new Dog object
spot = Dog.new
spot.name = "Spot"
spot.height = 66
spot.weight = 26
puts spot.bark()
bowser = Dog.new
bowser.name = "Bowser"
bowser.height = 81
bowser.weight = 46
puts bowser.bark()


# ---------- GETTERS & SETTERS ----------
# Getters and Setters are used to protect our objects from assigning bad fields or for providing improved output:
class Square
    attr_accessor :height, :width
    def get_area
        return width * height
    end
end
a_square = Square.new
print ("Enter height : ")
height = gets.chomp.to_i
print ("Enter width : ")
width = gets.chomp.to_i
a_square.height = height
a_square.width = width
puts ("Height: #{a_square.height}")
puts ("Width: #{a_square.width}")
puts ("The Area is: #{a_square.get_area}")

# ---------- WARRIORS BATTLE ----------
# We will create a game with this sample output:
'''
Sam attacks Paul and deals 9 damage
Paul is down to 10 health
Paul attacks Sam and deals 7 damage
Sam is down to 7 health
Sam attacks Paul and deals 19 damage
Paul is down to -9 health
Paul has Died and Sam is Victorious
Game Over
'''
# We will create a Warrior & Battle class:
# Warriors will have names, health, and attack and block maximums:
# They will have the capabilities to attack and block random amounts:
class Warrior
    attr_accessor :name, :health, :attk_max, :block_max

    def initialize(name, health, attk_max, block_max)
        @name = name
        @health = health
        @attk_max = attk_max
        @block_max = block_max
    end
    def attack
        # Randomly calculate the attack amount random() returns a value from 0.0 to 1.0:
        attk_amt = @attk_max * (Random.new.rand + 0.5)
        return attk_amt
    end
    def block
        # Randomly calculate how much of the attack was blocked:
        block_amt = @block_max * (Random.new.rand + 0.5)
        return block_amt
    end
end
# The Battle class will have the capability to loop until 1 Warrior dies:
# The Warriors will each get a turn to attack each turn:
class Battle < Warrior
    def initialize(warrior_a, warrior_b)
        @warrior_a = warrior_a
        @warrior_b = warrior_b
    end
    def start_fight
        # Continue looping until a Warrior dies switching back and forth as the Warriors attack each other:
        while true
            if get_attack_result(@warrior_a, @warrior_b) == "Game Over"
                puts ("Game Over")
                break
            elsif get_attack_result(@warrior_b, @warrior_a) == "Game Over"
                puts ("Game Over")
                break
            end
        end
    end
    # A function will receive each Warrior that will attack the other:
    # Have the attack and block amounts be integers to make the results clean:
    # Output the results of the fight as it goes:
    # If a Warrior dies return that result to end the looping in the above function:
    # Make this method static because we don't need to use self:
    def get_attack_result(warrior_a, warrior_b)
        damage2_warrior_a = (warrior_b.attack - warrior_a.block).to_i
        puts ("#{warrior_b.name} attacks #{warrior_a.name} and deals #{damage2_warrior_a} damage.")
        warrior_a.health = (warrior_a.health - damage2_warrior_a).to_i
        puts ("#{warrior_a.name} is down to #{warrior_a.health} health.")
        damage2_warrior_b = (warrior_a.attack - warrior_b.block).to_i
        puts ("#{warrior_a.name} attacks #{warrior_b.name} and deals #{damage2_warrior_b} damage.")
        warrior_b.health = (warrior_b.health - damage2_warrior_b).to_i
        puts ("#{warrior_b.name} is down to #{warrior_b.health} health.")
        if warrior_a.health <= 0
            puts ("#{warrior_a.name} has Died and #{warrior_b.name} is Victorious.")
            return "Game Over"
        elsif warrior_b.health <= 0
            puts ("#{warrior_b.name} has Died and #{warrior_a.name} is Victorious.")
            return "Game Over"
        end
    end
end
# Create 2 Warriors
paul = Warrior.new("Paul", 50, 20, 10)
sam = Warrior.new("Sam", 50, 20, 10)
# Create Battle object
battle = Battle.new(paul, sam)
# Initiate Battle
battle.start_fight

