require './players2'
require './questions'


player = Players.new('Joe')

question = Questions.new 
puts question.random_question
user_input = gets.chomp.to_i
correct = question.ans_check(user_input)

if correct 
  player.gain_point
else
  player.lose_life
end 
# puts correct