# frozen_string_literal: true

class Board
  attr_reader :game_board, :board_num
  def initialize
    @game_board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
    @board_num = []
  end

  def display_board
    bord_v = " #{@game_board[0]} | #{@game_board[1]} | #{@game_board[2]}\n " \
            "---------\n" \
            " #{@game_board[3]} | #{@game_board[4]} | #{@game_board[5]}\n " \
            "---------\n" \
            " #{@game_board[6]} | #{@game_board[7]} | #{@game_board[8]} "
    bord_v
  end

  def add_to_board(choice, player)
    @game_board[choice - 1] = player
  end

  def count_board(player)
    @board_num = []
    9.times do |i|
      @board_num << i if @game_board[i] == player
      @board_num << nil
    end
  end

  def winner?
    WIN.any? { |line| (line - @board_num) == [] }
  end
end
