# Deine datatype
class Question
    attr_accessor :prompt, :answer
    def initialize(prompt, answer)
        @prompt = prompt
        @answer = answer
    end
end
# Define prompts
p1 = "What color are apples? \n(a) red, \n(b) purple, \n(c) orange"
p2 = "What color are bananas? \n(a) pink, \n(b) red, \n(c) yellow"
p3 = "What color are pears? \n(a) yellow, \n(b) green, \n(c) orange"
# Define quiz
questions = [
    Question.new(p1, "a"),
    Question.new(p2, "c"),
    Question.new(p3, "b")
]
# Create method to run quiz
def run_quiz(questions)
    answer = ""
    score = 0
    for question in questions
        puts question.prompt
        answer = gets.chomp()
        if answer == question.answer
            score += 1
        end
    end
    puts "You got " + score.to_s + " out of " + questions.length().to_s + " correct."
end
puts run_quiz(questions)
