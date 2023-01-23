require './players'
require './questions.rb'


class Math_game

  # attr_reader :test_print             # just a test

  # def test_print
  #   puts "This is working properly"
  # end


end

# initializes a new game and calls test print
# math = Math_game.new
# math.test_print

question = Question.new
puts question.question_string
puts question.result