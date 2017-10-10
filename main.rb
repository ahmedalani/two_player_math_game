module Mathgame

  require './players2'
  require './questions'

  print 'type player1 name: '
  user_input = gets.chomp.to_s
  player1 = Players.new(user_input)

  print 'type player2 name: '
  user_input = gets.chomp.to_s
  player2 = Players.new(user_input)
  
  turn = 1  
  run = true
  while run
    puts '~~~~~~~~~~~~~~~'
    if turn % 2 == 0
      @player = player2
    else
      @player = player1
    end 
    turn += 1      
    
    puts "player is #{@player.name}"

    question = Questions.new 
    puts question.random_question
    user_input = gets.chomp.to_i
    correct = question.ans_check(user_input)

    if correct 
      @player.gain_point
    else
      @player.lose_life
    end 

    puts "#{player1.name} score: #{player1.score} lives: #{player1.lives}"
    puts "#{player2.name} score: #{player2.score} lives: #{player2.lives}"

    if @player.lives == 0
      puts "Game Over after #{turn} turn(s)"
      puts "#{@player.name} lost"
      run = false
    end 
  end

end 