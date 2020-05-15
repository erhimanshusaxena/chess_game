require_relative '../src/queen'

describe Queen do
    let(:queen) { Queen.new }
    
    context "when given current cell number of the matrix" do
        it "should return the next possible cell number of Pawn" do
            expect(queen.next_cell('A1')).to eql("A2, A3, A4, A5, A6, A7, A8, B1, B2, B3, B4, B5, B6, B7, B8, C1, C2, C3, C4, C5, C6, C7, C8, D1, D2, D3, D4, D5, D6, D7, D8, E1, E2, E3, E4, E5, E6, E7, E8, F1, F2, F3, F4, F5, F6, F7, F8, G1, G2, G3, G4, G5, G6, G7, G8, H1, H2, H3, H4, H5, H6, H7, H8")
        end
        it "should not return cell number out of the board" do
            expect(queen.next_cell('H1')).not_to include("H0")
            expect(queen.next_cell('H1')).not_to include("G0")
        end
    end
end