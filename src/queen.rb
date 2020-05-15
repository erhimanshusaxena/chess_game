require_relative 'piece.rb'

class Queen < Piece
    def possible_moves(i, j)
        arr = []
        (1..8).each do |e|
            (1..8).each do |f|
                arr.push([e, f]) unless e == i && f == j
            end
        end
        return arr
    end
end

q = Queen.new
puts q.next_cell("A1").inspect