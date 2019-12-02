class Player
  attr_accessor :choice, :player
  def initialize
    @choice = nil
    @player = 'X'
  end

  def switch
    if $count % 2 == 0
      @player = 'X'
    else
      @player = 'O'
    end
  end

  def num_choice(game_board)
    @choice = gets.to_i
    until (game_board[@choice-1] == " ") && (@choice.between?(1,9))
      puts "Wrong choice!!!!!!!!!!!"
      puts "Please input another number between 1-9 and not used already"
      @choice = gets.to_i
    end
    return @choice
  end

end