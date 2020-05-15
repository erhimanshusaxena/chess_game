require_relative '../src/king'

describe King do
    let(:king) { King.new }
    
    context "when given current cell number of the matrix" do
        it "should return the next possible cell number of Pawn" do
            expect(king.next_cell('B2')).to eql("A3, B3, C3, C2, C1, B1, A1, A2")
        end
        it "should not return cell number out of the board" do
            expect(king.next_cell('B2')).not_to include("A0")
            expect(king.next_cell('B2')).not_to include("B0")
        end
    end
end