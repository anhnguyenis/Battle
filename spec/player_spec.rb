describe Player do
  it 'returns player name' do
    player = Player.new
    expect(player.name).to eq('Bob')    
  end
end
