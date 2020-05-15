require_relative '../src/bishop'

describe Bishop do
    let(:bishop) { Bishop.new }
    
    context "when given current cell number of the chess board" do
        it "should return the next possible cell number of Bishop on chess board" do
            expect(bishop.next_cell('H1')).to eql("G2, F3, E4, D5, C6, B7, A8")
        end
        it "should not return cell number out of the board" do
            expect(bishop.next_cell('H1')).not_to include("A9")
            expect(bishop.next_cell('H1')).not_to include("G0")
        end
        it "should not return straight cell number of the board" do
            expect(bishop.next_cell('H1')).not_to include("G1")
        end
    end
end