# frozen_string_literal: true

class Player
  attr_reader :choice, :player, :count
  def initialize
    @choice = nil
    @player = 'X'
    @count = 0
  end

  def switch
    @count += 1
    if (@count % 2).zero?
      @player = 'X'
    else
      @count = 1
      @player = 'O'
    end
  end

  def num_choice(game_board)
    @choice = gets.to_i
    until game_board[@choice - 1] == ' ' && @choice.between?(1, 9)
      puts 'Wrong choice!!!!!!!!!!!'
      puts 'Please input another number between 1-9 and not used already'
      @choice = gets.to_i
    end
    @choice
  end
end
