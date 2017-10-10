class Players

  attr_accessor :name, :lives, :score
  def initialize(name, lives=3)
    @name = name
    @lives = lives
    @score = 0
  end 

  def gain_point
    @score += 1
    puts "got a piont #{@score}"
  end 

  def lose_life
    @lives -= 1
    puts "lost a life #{@lives}"    
  end 

end 