class Board
  attr_accessor :game_board, :board_num
  def initialize
    @game_board = [" "," "," "," "," "," "," "," "," "]
    @board_num = []
  end

  def display_board
    disp =  " #{@game_board[0]} | #{@game_board[1]} | #{@game_board[2]}\n " +
            "---------\n" +
            " #{@game_board[3]} | #{@game_board[4]} | #{@game_board[5]}\n " +
            "---------\n" +
            " #{@game_board[6]} | #{@game_board[7]} | #{@game_board[8]} "
    return disp
  end

  def add_to_board(choice, player)
    @game_board[choice-1] = player
  end

  def count_board(player)
    @board_num = []
    9.times do |i|
        if @game_board[i] == player
            @board_num << i
        else
            @board_num << nil
        end
    end
  end

  def has_winner
    WIN.any? {|line| (line - @board_num) == [] }
  end
end