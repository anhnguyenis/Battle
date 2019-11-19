feature 'See Player 2s Hit Points' do
  scenario 'Can display player 2s points' do
    visit('/play')
      click_button 'Show points'
      expect(page).to have_content 'Player 2 has 12 points'
  end
end
