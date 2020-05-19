require "./class.rb"

describe Bishop do
  describe '#moves' do
    it "bishop moves" do
      node = Bishop.new
      expect(node.moves([5,5], [7,7])).to eq([7,7])
    end 
  end

  describe '#moves' do
    it "bishop moves" do
      node = Bishop.new
      expect(node.moves([5,5], [7,8])).to eq(node.illegal_move)
    end 
  end
end
