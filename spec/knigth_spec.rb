require "./class.rb"

describe Knight do
  describe '#moves' do
    it "knight moves" do
      node = Knight.new
      expect(node.moves([5,5], [7,6])).to eq([7,6])
    end 
  end

  describe '#moves' do
    it "Knight moves" do
      node = Knight.new
      expect(node.moves([5,5], [7,8])).to eq(node.illegal_move)
    end 
  end
end
