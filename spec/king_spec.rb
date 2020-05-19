require "./class.rb"

describe King do
  describe '#moves' do
    it "king moves" do
      node = King.new
      expect(node.moves([5,5], [6,6])).to eq([6,6])
    end 
  end

  describe '#moves' do
    it "king moves" do
      node = King.new
      expect(node.moves([5,5], [7,8])).to eq(node.illegal_move)
    end 
  end
end
