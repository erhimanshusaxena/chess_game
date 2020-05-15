require_relative '../src/pawn'

describe Pawn do
    let(:pawn) { Pawn.new }
    
    context "when given current cell number of the matrix" do
        it "should return the next possible cell number of Pawn" do
            expect(pawn.next_cell('E5')).to eql("F5, E6, D5, E4")
        end
        it "should not return cell number out of the board" do
            expect(pawn.next_cell('H1')).to eql("H2, G1")
            expect(pawn.next_cell('H1')).not_to include("H0")
            expect(pawn.next_cell('H1')).not_to include("G0")
        end
        it "should not return diagonal cell number of the board" do
            expect(pawn.next_cell('H1')).not_to include("G2")
        end
    end
end