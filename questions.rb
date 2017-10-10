class Questions

  def initialize 
    @first_num = rand(1..20)
    @second_num = rand(1..20)
  end 

  def random_operator
    operators = ['+', '-', '*']
    operators.sample
  end 

  def random_question 
    @random_question = "Q: #{@first_num} #{random_operator} #{@second_num}"
  end 

end 

