require 'game'

describe Game do
  let(:double_player_1) { double (:double_player_1) }
  let(:double_player_2) { double (:double_player_2) }
  subject(:game) { described_class.new(double_player_1, double_player_2) }
  

  it '#attack(player) sends #damage to the Player passed in' do
    allow(double_player_2).to receive(:damage)
    expect(double_player_2).to receive(:damage)
    subject.attack(double_player_2)
  end 

  it 'it responds to #player_1' do
    expect(subject).to respond_to(:player_1)
  end 

  it 'it responds to #player_2' do
    expect(subject).to respond_to(:player_2)
  end 
    

end 
