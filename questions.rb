module Mathgame
  class Questions

    attr_reader :random_operator

    def initialize 
      @first_num = rand(1..20)
      @second_num = rand(1..20)
      @random_operator = [:+, :-, :*].sample
    end

    def random_question 
      @random_question = "Q: #{@first_num} #{random_operator} #{@second_num}"
    end 

    def ans_check(answer)
      correct_answer = @first_num.send(random_operator, @second_num)
      correct_answer == answer 
    end 
    
  end 
end 