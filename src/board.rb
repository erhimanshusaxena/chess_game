class Board
    # On object creation create a matrix of 8x8
    def initialize
        n = 8
        @cells = Array.new(n) { 
            |i| Array.new(n) { 
                    |j| "#{(i+65).chr}#{j+1}" 
                } 
            }
    end
    # Return cells of the matrix with name
    def cells
        @cells
    end

    # Return row and column of the cell 
    def get_row_column(cell)
        cells.each_with_index do |row, i|
            if row.include?(cell)
                return [i + 1, row.index(cell) + 1]
            end
        end
    end

    #return cell name of row and column
    def get_cell_name(i, j)
        return cells[i - 1][j - 1]
    end
end