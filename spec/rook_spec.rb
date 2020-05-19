require './class.rb'

describe Rook do
    describe '#moves' do
      it "the move of a rook" do
        node = Rook.new
        expect(node.moves([5,2],[2,2])).to eq([2,2])
      end
    end

    describe '#moves' do
      it "the move of a rook" do
        node = Rook.new
        expect(node.moves([5,2],[5,8])).to eq([5,8])
      end
    end

    describe '#moves' do
      it "the move of a rook" do
        node = Rook.new
        expect(node.moves([5,2],[2,8])).to eq(node.illegal_move)
      end
    end
end
