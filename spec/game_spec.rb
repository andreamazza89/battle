require 'game'

describe Game do
  let(:other_player) { double (:player) }

  it '#attack(player) sends #damage to the Player passed in' do
    allow(other_player).to receive(:damage)
    expect(other_player).to receive(:damage)
    subject.attack(other_player)
  end 
end 
