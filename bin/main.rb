#!/usr/bin/env ruby
class Tic
  # attr_reader :board
  #
  # def initialize
  #   @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  #   @total_moves = 9
  # end

  def welcome
    puts ' '
    puts '******************************'
    puts '*        TIC-TAC-TOE         *'
    puts '******************************'
    puts ' CREATED BY ELIJAH & EDWARD '
    puts ' '
    puts '......GAME INSTRUCTIONS.......'
    puts 'Only two(2) players can play this game'
    puts 'The first player takes X and the second player takes O'
    puts 'Choose numbers from 1 to 9 to select desired cell'
    puts 'No duplicate numbers are allowed'
    puts '...............................'

    # Request for player names and save them to p1 and p2
    puts 'Player 1 please enter your name: '
    p1 = gets.chomp

    puts 'Player 2 please enter your name: '
    p2 = gets.chomp

    puts "Player 1: #{p1}, Token: X"
    puts "Player 2: #{p2}, Token: O"
  end

  #Tic Tac Toe Board

  def display_board
    board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    puts " #{board[0]} | #{board[1]} | #{board[2]} "

    puts ' ---------- '

    puts " #{board[3]} | #{board[4]} | #{board[5]} "

    puts ' ---------- '

    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end

  def get_position
    puts 'Wich position do you want to take?'
    position = gets.chomp
  end

  # def get_current_player
  #   if @total_moves%2 == 0
  #     @current_player = player_two
  #   else
  #     @current_player = player_one
  #   end
  # end

end
game = Tic.new
game.welcome
game.display_board
game.get_position
