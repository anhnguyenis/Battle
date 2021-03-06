require 'player'

describe Player do
  subject(:player1) { Player.new('Bob')}
  subject(:player2) { Player.new('Sheila')}
  
describe '#name' do
  it 'returns player name' do
    # player = Player.new('Bob')
    expect(player1.name).to eq 'Bob'
  end
end

describe '#hit_points' do
  it 'returns hit points' do
    expect(player1.hit_points).to eq described_class::DEFAULT_HIT_POINTS
  end
end

describe '#attack' do
  it 'damages player' do
    expect(player2).to receive(:receive_damage)
    player1.attack(player2)
  end
end

describe '#receive_damage' do
  it 'reduces players hit points' do
    expect{ player2.receive_damage }.to change { player2.hit_points }.by(-10)
  end
end

end
