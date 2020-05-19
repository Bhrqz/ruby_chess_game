require "./class.rb"

describe Pawn do
  describe "#opening" do
    it "sums two to Y position if white and sustract 2 if black" do
      move = Pawn.new
      expect(move.opening([4,2], 'white')).to eq([4,4])
    end
  end

  describe '#moves' do
    it "sums one to Y position if white and sustract onw if black" do
      move = Pawn.new
      expect(move.moves([5,3], 'black')).to eq([5,2])
    end
  end

  describe '#eats_left' do
    it "white: current x-1, y+1/ black x-1 y-1 " do
      move = Pawn.new
      expect(move.eats_left([5,3], 'white')).to eq([4,4])
    end
  end

  describe '#eats_left' do
    it "white: current x-1, y+1/ black x-1 y-1 " do
      move = Pawn.new
      expect(move.eats_left([5,3], 'black')).to eq([4,2])
    end
  end

  describe '#eats_right' do
    it "white: current x+1, y+1/ black x-1 y-1 " do
      move = Pawn.new
      expect(move.eats_right([5,3], 'white')).to eq([6,4])
    end
  end

  describe '#eats_right' do
    it "white: current x+1, y+1/ black x+1 y-1 " do
      move = Pawn.new
      expect(move.eats_right([5,3], 'black')).to eq([6,2])
    end
  end
  
  describe "#valid" do
    it "selects true if there is nothing in front of pawn" do
      pawn = Pawn.new
      expect(pawn.valid([2,2], "white")).to eq(true)
    end
  end

end

