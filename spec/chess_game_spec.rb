require './lib/chess_game.rb'

describe right_choice? do
  it "decides if a selection is valid" do
    expect(right_choice?("\u{265B}", "black").to eq(true))
  end
end