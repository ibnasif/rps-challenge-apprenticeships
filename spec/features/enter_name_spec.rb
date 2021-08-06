feature "enter and see name" do
  scenario "user enters name before the game and then is shown it after" do
    visit '/'
    fill_in 'name', with: 'danyaal'
    click_button 'play'
    expect(page).to have_content "choose your weapon, danyaal."
  end
end