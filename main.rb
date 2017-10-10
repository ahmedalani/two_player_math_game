require './players2'
require './questions'

print 'type player1 name: '
@user_input = gets.chomp.to_s
player1 = Players.new(@user_input)

print 'type player2 name: '
@user_input = gets.chomp.to_s
player2 = Players.new(@user_input)

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