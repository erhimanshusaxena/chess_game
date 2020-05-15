require_relative '../src/horse'

describe Horse do
    let(:horse) { Horse.new }
    
    context "when given current cell number of the matrix" do
        it "should return the next possible cell number of Pawn" do
            expect(horse.next_cell('H1')).to eql("G2, F3, E4, D5, C6, B7, A8")
        end
        it "should not return cell number out of the board" do
            expect(horse.next_cell('H1')).not_to include("A9")
            expect(horse.next_cell('H1')).not_to include("G0")
        end
        it "should not return straight cell number of the board" do
            expect(horse.next_cell('H1')).not_to include("G1")
        end
    end
end