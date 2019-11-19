feature 'See Player 2s Hit Points' do
  scenario 'Can display player 2s points' do
    visit('/')
    fill_in 'name1', with: 'Bob'
    fill_in 'name2', with: 'Sheila'
    click_button 'Submit'
    expect(page).to have_content'Sheila has 12 points'
  end
end
