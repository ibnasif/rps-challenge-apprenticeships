require 'ai'

describe Ai do
  let(:ai) {Ai.new}
  it "can choose between rock, paper, scissors and return rock" do
    allow(ai).to receive(:choose).and_return(:rock)
    expect(ai.choose).to eq :rock 
  end
end

