require_relative 'piece.rb'

class Bishop < Piece
    def possible_moves(i, j)
        arr = []
        (1..8).each do |e|
            arr.push([i - e, j - e]) if i - e >= 1 && j - e >= 1
            arr.push([i + e, j - e]) if i + e <= 8 && j - e >= 1
            arr.push([i + e, j + e]) if i + e <= 8 && j + e <= 8
            arr.push([i - e, j + e]) if i - e >= 1 && j + e <= 8
        end

        return arr
    end
end

b = Bishop.new
puts b.next_cell("H1").inspect