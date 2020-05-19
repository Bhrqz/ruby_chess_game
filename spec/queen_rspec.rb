require "./class.rb"

describe Queen do
  describe '#moves' do
    it "queen moves" do
      node = Queen.new
      expect(node.moves([5,5], [8,8])).to eq([8,8])
    end 
  end

  describe '#moves' do
      it "the move of a queen" do
        node = Queen.new
        expect(node.moves([5,2],[5,8])).to eq([5,8])
      end
    end

  describe '#moves' do
    it "queen moves" do
      node = Queen.new
      expect(node.moves([5,5], [7,6])).to eq(node.illegal_move)
    end 
  end
end
