require_relative 'piece.rb'

class Rook < Piece
    def possible_moves(i, j)
        arr = []
        (1..8).each do |e|
            arr.push([i, e]) unless e == j
            arr.push([e, j]) unless e == i
        end
        return arr
    end
end