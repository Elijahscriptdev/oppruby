#!/usr/bin/env ruby
require_relative '../lib/board.rb'
require_relative '../lib/player.rb'

WIN = [[0, 1, 2], [3, 4, 5], [6, 7, 8],
       [0, 3, 6], [1, 4, 7], [2, 5, 8],
       [0, 4, 8], [2, 4, 6]]

$count = 0
class Tic

  def initialize
    @board = Board.new
    @player = Player.new
  end

  def intro
    puts ' '
    puts '******************************'
    puts '*        TIC-TAC-TOE         *'
    puts '******************************'
    puts ' CREATED BY ELIJAH '
    puts ' '
    puts '......GAME INSTRUCTIONS.......'
    puts 'Only two(2) players can play this game'
    puts 'The first player takes X and the second player takes O'
    puts 'Choose numbers from 1 to 9 to select desired cell'
    puts 'No duplicate numbers are allowed'
    puts '...............................'
    puts "Press 'ctrl + c' to exit at anytime."
  end

  def game_draw?
    $count >= 9
  end

  def game_winner?
    @board.has_winner
  end

  def run
    intro
    while $count < 9
      @player.switch
      puts "Player #{@player.player}, pick a number between 1-9:"
      @player.num_choice(@board.game_board)
      @board.add_to_board(
        @player.choice,
        @player.player,
      )
      puts @board.display_board
      @board.count_board(@player.player)
      if game_winner?
        puts "GAME OVER!"
        puts "Winner player #{@player.player}!"
        break
      end
      $count += 1
    end
    if game_draw?
      puts "It is a draw...try again!!!"
    end
  end
end

tic = Tic.new
tic.run


