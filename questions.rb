class Question
  attr_reader :question_string, :result
  
  def initialize
  # Random.random_number(1..20) can be used to generate a random num between 1 to 20 in ruby
    @first_num = Random.random_number(1..20)
    @second_num = Random.random_number(1..20)
    @question_string = "What does #{@first_num} plus #{@second_num} equal?"
    @result = @first_num + @second_num
  end

end