require_relative "board"
# This class is parent class of all
# Chess board pieces
class Piece
    # Initialize board object while using 
    # Piece on board
    def initialize
        @board = Board.new
    end
    # return next cell of the Board piece
    def next_cell(current_cell)
        i, j = @board.get_row_column(current_cell)

        possible_moves(i, j).map { 
            |arr| @board.get_cell_name(arr[0], arr[1]) 
        }.join(', ')
    end
end