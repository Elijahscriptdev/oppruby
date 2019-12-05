# frozen_string_literal: true

class Tic
  def initialize
    @board = Board.new
    @player = Player.new
    @count = 0
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
    board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    puts " #{board[0]} | #{board[1]} | #{board[2]} "

    puts ' ---------- '

    puts " #{board[3]} | #{board[4]} | #{board[5]} "

    puts ' ---------- '

    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end

  def game_draw?
    @count >= 9
  end

  def game_winner?
    @board.winner?
  end

  def run
    intro
    while @count < 9
      @player.switch
      puts "Player #{@player.player}, pick a number between 1-9:"
      @player.num_choice(@board.game_board)
      @board.add_to_board(
        @player.choice,
        @player.player
      )
      puts @board.display_board
      @board.count_board(@player.player)
      if game_winner?
        puts 'GAME OVER!'
        puts "Winner player #{@player.player}!"
        break
      end
      @count += 1
    end
    return unless game_draw?

    puts 'It is a draw...try again!!!'
  end
end
