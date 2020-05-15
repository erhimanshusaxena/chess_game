require_relative '../src/horse'

describe Horse do
    let(:horse) { Horse.new }
    
    context "when given current cell number of the chess board" do
        it "should return the next possible cell number of Horse" do
            expect(horse.next_cell('H3')).to eql("G1, G5, F4, F2")
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