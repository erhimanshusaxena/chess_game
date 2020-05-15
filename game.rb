require_relative 'src/pawn'
require_relative 'src/rook'
require_relative 'src/queen'
require_relative 'src/piece'
require_relative 'src/king'
require_relative 'src/horse'
require_relative 'src/board'
require_relative 'src/bishop'

class Game
    def start
        loop do
            puts "Enter chess piece and its Position (cell number) on the chessboard. E.g. “King D5”, enter 'quit' to exit"
            input = gets.chomp
            break if input == "quit"
            get_piece input
        end
    end

    def get_piece input
        input = input.split(" ")
        piece_name = input[0]
        cell_number = input[1]

        case piece_name
        when "Pawn"
            puts Pawn.new.next_cell(cell_number)
        when "Rook"
            puts Rook.new.next_cell(cell_number)
        when "Horse"
            puts Horse.new.next_cell(cell_number)
        when "Bishop"
            puts Bishop.new.next_cell(cell_number)
        when "Queen"
            puts Queen.new.next_cell(cell_number)
        when "King"
            puts King.new.next_cell(cell_number)
        else
            puts "Please enter valid input."
        end 
    end
end


g = Game.new
g.start