require_relative '../src/board'

describe Board do
    context 'with initialization' do
        let(:board) { Board.new }

        it "should create a matrix" do
            expect(board.cells.instance_of?(Array)).to eq(true)
        end
        it "should be a size of 8x8" do
            expect(board.cells.size).to eq(64)
        end
    end
end