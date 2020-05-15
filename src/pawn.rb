require_relative 'piece.rb'

class Pawn < Piece
    def possible_moves(i, j)
        arr = []
        arr.push([i + 1, j]) if (i + 1) <= 8
        arr.push([i, j + 1]) if (j + 1) <= 8
        arr.push([i - 1, j]) if (i - 1) >= 1
        arr.push([i, j - 1]) if (j - 1) >= 1
        return arr
    end
end