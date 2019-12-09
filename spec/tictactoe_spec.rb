# frozen_string_literal: true

require_relative '../lib/board.rb'
require_relative '../lib/player.rb'
require_relative '../lib/tic_tac_toe.rb'
require 'rspec'

WIN = [[0, 1, 2], [3, 4, 5], [6, 7, 8],
			 [0, 3, 6], [1, 4, 7], [2, 5, 8],
			 [0, 4, 8], [2, 4, 6]].freeze

describe Board do
	let(:board) { Board.new }
	let(:board_num) {}

	describe '#initialize' do
		it 'checks if board is created' do
			expect(board.game_board).to match_array([' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '])
		end
	end

	context 'when initialized helper array' do
		it 'helper array is empty' do
			expect(board.board_num).to match_array([])
		end
	end

	describe '#add_to_board' do
		it 'adds "X" or "O" to game board' do
			board.add_to_board(0, 'O')
			expect(board.game_board).to contain_exactly('O', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ')
		end
	end

	describe '#count_board' do
		it 'returns array that contains either a number or nil as an element' do
			board.game_board
			board.count_board('O')
			expect(board.board_num).to match_array([nil, nil, nil, nil, nil, nil, nil, nil, nil])
		end
	end

	describe '#winner?' do
		context 'when win condition' do
			it 'returns true after confiriming win condition' do
				board_num = [0, 1, 2, nil, nil, nil, nil, nil, nil]
				win = WIN.any? { |line| (line - board_num) == [] }
				expect(win).to eq(true)
			end
		end

		context 'when not win condition' do
			it 'returns false after confirming no win condition' do
				board_num = [nil , 1, nil, 3, nil, nil, 6, nil, 8, 9]
				win = WIN.any? { |line| (line - board_num) == []}
				expect(win).to eq(false)
			end
		end
	end
end

describe Player do

	let!(:player) {Player.new}
	let(:game_board_empty) {[" "," "," "," "," "," "," "," "," "," "]}
	let(:game_board_full) {["0","1","2","3"," ","5","6","7","8","9"]}

	describe '#initialize' do
		context 'on game start-up' do
			it 'initializes player and board choice' do
				expect(player.player).to eq('X')
				expect(player.choice).to eq(nil)
			end
		end
	end

	describe '#switch' do
		context 'when count is odd' do
			it 'returns "O" as the player' do
				player.switch
				expect(player.player).to eq('O')
			end
		end
	end

	describe '#num_choice' do
		context 'when choice is valid' do
			it 'sets and returns player choice' do
				allow(player).to receive(:gets).and_return("1".to_i)
				player.num_choice(game_board_empty)
				expect(player.choice).to eq(1)
			end
		end

		context 'when choice is invalid' do
			it "asks for choice until vaild, should return error message twice in terminal" do
				allow(player).to receive(:gets).at_most(2).and_return("e","0".to_i,"5".to_i)
				player.num_choice(game_board_full)
				expect(player.choice).to eq(5)
			end
		end
	end
end
