feature "can choose between rock, paper and scissors" do
  scenario "chooses rock" do
    sign_in_and_play
    click_button "rock"
    expect(page).to have_content "you chose rock."
  end
end