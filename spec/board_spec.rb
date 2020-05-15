require_relative '../src/board'

describe Board do
    let(:board) { Board.new }
    context 'with initialization' do
        it "should create a matrix" do
            expect(board.cells.instance_of?(Array)).to eq(true)
        end
        it "should be a size of 8x8" do
            expect(board.cells.flatten.size).to eq(64)
        end
    end
    context "when given cell number of the matrix" do
        it "should return the row and column of the given cell number" do
            expect(board.get_row_column('E6')).to eql([5,6])
        end
    end
    context "when given coordinates of the matrix" do
        it "should return cell name of the given coordinates" do
            expect(board.get_cell_name(6, 6)).to eql("F6")
        end
    end
end