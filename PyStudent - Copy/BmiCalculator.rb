# collecting user input
puts ("Please enter your weight in kilograms: ")
Weight = gets.chomp.to_f
puts ("Please enter your hight in meters: ")
Height = gets.chomp.to_f

# Formula for BMI
BMI = (Weight / (Height * Height))
if BMI >= 30
    puts ("You're qualified as obese, BMI: #{BMI}")
elsif BMI >= 25
    puts ("You're qualified as overweight, BMI: #{BMI}")
elsif BMI >= 18.5
    puts ("You're in the normal range, BMI: #{BMI}")
else
    puts ("You're underweight, BMI: #{BMI}")
end
