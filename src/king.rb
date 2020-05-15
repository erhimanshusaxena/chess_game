require_relative 'piece.rb'

class King < Piece
    def possible_moves(i, j)
        arr = []
        arr.push([i - 1, j + 1]) if (j + 1) <= 8 && (i - 1) >= 1
        arr.push([i, j + 1]) if (j + 1) <= 8
        arr.push([i + 1, j + 1]) if (i + 1) <= 8 && (j + 1) <= 8
        arr.push([i + 1, j]) if (i + 1) <= 8

        arr.push([i + 1, j - 1]) if (i + 1) && (j - 1) >= 1
        arr.push([i, j - 1]) if (j - 1) >= 1
        arr.push([i - 1, j - 1]) if (i - 1) >= 1 && (j - 1) >= 1
        arr.push([i - 1, j]) if (i - 1) >= 1
        return arr
    end
end

k = King.new
puts k.next_cell("B2").inspect