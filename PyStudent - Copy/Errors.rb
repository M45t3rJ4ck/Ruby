# logical error - new lines inbetween code has been removed, operations got defined.
# Defining operation - no indications off operation logic was used to set application apart

# I'm 24 years old - moved to it's own line
ageStr = "24 years old"  # compilation error due to indintation and casting was not used, moved up;
age = ageStr[0..2].to_i  # compilation error due to indintation and incorrect casting value indicated, moved up;
three = "3".to_i  # compilation error due to indintation and casting was not used, moved up;
answerMonths = (age * "12".to_i) + (three * "12".to_i) + "6".to_i  # logical error and compilation error operation was undefined and maths was incorrect, moved up;
answerYears = answerMonths.to_i / "12".to_i  # compilation error due to indintation and logical error due to location and maths error, moved up;

# Operation
puts ("Welcome to the error program.")  # logical error, moved down to follow a logical order for operations and compilation error, parenthasis was left out including new line removed;
puts ("I'm #{age} years old.")  # logical error, moved down to follow a logical order for operations and compilation error, casting was done incorrectly;
puts ("In 3 years and 6 months, I'll be #{answerMonths} months old")  # logical error, moved up to follow a logical order for operations and compilation error, casting was done incorrectly;
print("The total number of years: #{answerYears}")  # logical error, moved down to follow a logical order for operations and compilation error, casting was done incorrectly;
# HINT, 330 months is the correct answer
