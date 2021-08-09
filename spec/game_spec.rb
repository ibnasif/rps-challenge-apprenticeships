require 'game'
require 'ai'

describe Game do
  let(:game) {Game.new}
  let(:ai) {Ai.new}
  it "gives an outcome: win, lose or draw" do



    allow(ai).to receive(:choose).and_return(:rock)

    game.play
    

    expect(game.result).to eq "draw"
  end
end


#need to create a player choice class - make it equal to the value clicked by user on app.rb
#create double of player choice and ai choice here 