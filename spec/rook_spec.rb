require_relative '../src/rook'

describe Rook do
    let(:rook) { Rook.new }
    
    context "when given current cell number of the matrix" do
        it "should return the next possible cell number of Pawn" do
            expect(rook.next_cell('E5')).to eql("E1, A5, E2, B5, E3, C5, E4, D5, E6, F5, E7, G5, E8, H5")
        end
        it "should not return cell number out of the board" do
            expect(rook.next_cell('H1')).to eql("A1, H2, B1, H3, C1, H4, D1, H5, E1, H6, F1, H7, G1, H8")
            expect(rook.next_cell('H1')).not_to include("H0")
            expect(rook.next_cell('H1')).not_to include("G0")
        end
        it "should not return diagonal cell number of the board" do
            expect(rook.next_cell('H1')).not_to include("G2")
        end
    end
end