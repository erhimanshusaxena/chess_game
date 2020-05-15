require_relative '../src/horse'

describe Horse do
    let(:horse) { Horse.new }
    
    context "when given current cell number of the matrix" do
        it "should return the next possible cell number of Pawn" do
            expect(horse.next_cell('D4')).to eql("C2, E2, F3, F5, E6, C6, B5, B3")
        end
        it "should not return cell number out of the board" do
            expect(horse.next_cell('D4')).not_to include("A9")
            expect(horse.next_cell('D4')).not_to include("G0")
        end
        it "should not return straight cell number of the board" do
            expect(horse.next_cell('D4')).not_to include("D6")
        end
    end
end