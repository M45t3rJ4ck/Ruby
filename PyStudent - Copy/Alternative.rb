# Create a program that reads in a sting and makes each alternate character an Uppercase character and each other alternate character a lowercase character.

# Collecting user input
print "Please enter your sentence to convert: "
string = gets.chomp()

def weirdcase string
    arr, char, result = [],[],[]
    arr = string.split(' ').each_slice(string.split(' ').count).to_a.transpose
    arr.each_with_index do |arr_word, index| 
        arr_word.each_with_index do |word, sub_index| 
            word.each_char.with_index do |letter, letter_index| 
                letter_index.even? ? char.push(letter.upcase) : char.push(letter.downcase)
            end
        end
        result.push(char.join(''))
        char.clear
    end
    result.join(' ')
end

puts weirdcase(string)
