#!/usr/bin/env ruby
require_relative '../lib/board.rb'
require_relative '../lib/player.rb'
require_relative '../lib/tic_tac_toe.rb'

WIN = [[0, 1, 2], [3, 4, 5], [6, 7, 8],
       [0, 3, 6], [1, 4, 7], [2, 5, 8],
       [0, 4, 8], [2, 4, 6]]

$count = 0

tic = Tic.new
tic.run

class Tic
 
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

end

game = Tic.new
game.welcome
game.display_board
game.get_position
