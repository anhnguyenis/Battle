feature 'Adds player names ' do
  scenario 'Can fill in player names and display them onscreen' do
    visit('/')
      fill_in 'name1', with: 'Bob'
      fill_in 'name2', with: 'Sheila'
      click_button 'Submit'
      expect(page).to have_content 'Bob vs. Sheila'
  end
end
