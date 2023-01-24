

class Turn
  attr_reader :take_turn

  # This method switches the current player to the opposite player
  def take_turn(currentplayer, not_current_player)
    question = Question.new
    print "#{not_current_player.player_name}: "
    puts question.question_string
  end

end