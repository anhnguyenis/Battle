feature 'Attack Player 2 and display confirmation' do
  scenario 'Can hit player 2 and display onscreen' do
    sign_in_and_play
    click_link 'Hit Player 2'
    expect(page).to have_content 'You have gently nudged Sheila!'
  end
end
