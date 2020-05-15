require_relative 'piece.rb'

class Horse < Piece
    def possible_moves(i, j)
        arr = []
        arr.push([i - 1, j - 2]) if i - 1 >= 1 && j - 2 >= 1
        arr.push([i + 1, j - 2]) if i + 1 <= 8 && j - 2 >= 1
        arr.push([i + 2, j - 1]) if i + 2 <= 8 && j - 1 >= 1
        arr.push([i + 2, j + 1]) if i + 2 <= 8 && j + 1 <= 8     
        arr.push([i + 1, j + 2]) if i + 1 >= 1 && j + 2 <= 8
        arr.push([i - 1, j + 2]) if i - 1 >= 1 && j + 2 <= 8
        arr.push([i - 2, j + 1]) if i - 2 >= 1 && j + 1 <= 8
        arr.push([i - 2, j - 1]) if i - 2 >= 1 && j - 1 >= 1

        return arr
    end
end

h = Horse.new
puts h.next_cell("D4").inspect