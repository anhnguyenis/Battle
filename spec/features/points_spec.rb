feature 'See Player 2s Hit Points' do
  scenario 'Can display player 2s points' do
    sign_in_and_play
    expect(page).to have_content'Sheila has 12 points'
  end
end
