feature 'Attack' do
  scenario 'Can hit player 2 and display onscreen' do
    sign_in_and_play
    click_on 'Hit Sheila'
    expect(page).to have_content 'Bob nudged Sheila!'
  end

  scenario 'reduce player 2s points by 10' do
    sign_in_and_play
    click_on 'Hit Sheila'
    expect(page).not_to have_content 'Sheila now has 12 points'
    expect(page).to have_content 'Sheila now has 2 points.'
  end
end
