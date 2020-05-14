class Board
    # On object creation create a matrix of 8x8
    def initialize
        a = ['A','B','C','D','E','F','G','H']
        b = ['1','2','3','4','5','6','7','8']
        @cells = a.product(b).map { |x, y| "#{x}#{y}" }
    end
    # Return cells of the matrix with name
    def cells
        @cells
    end
end