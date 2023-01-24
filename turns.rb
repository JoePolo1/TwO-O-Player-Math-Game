

class Turn
  attr_reader :take_turn, :round_result, :not_current_player, :question
  attr_accessor :answer

  def initialize(not_current_player)
    @answer = 0
    @question = Question.new
    @not_current_player = not_current_player
  end

  # This method produces the strings of the question, and collects the answer entered into console.
  def take_turn(currentplayer, not_current_player)

    print "#{not_current_player.player_name}: "
    puts question.question_string
    print " >  "
    @answer = gets.chomp.to_i

  end

  # The logic that handles if the answer was correct or not
  def round_result?
    puts"question.result is #{question.result}"
    puts "answer is #{answer}"
    if answer == question.result
      print "#{not_current_player.player_name}: "
      puts "Yes! You are correct."
      return true
    else
      print "#{not_current_player.player_name}: "
      puts "Seriously? No!"

      return false
    end
  end

end