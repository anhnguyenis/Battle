feature 'Adds player names ' do
  scenario 'Can fill in player names and display them onscreen' do
    visit('/')
      sign_in_and_play
      expect(page).to have_content 'Bob vs. Sheila'
  end
end
