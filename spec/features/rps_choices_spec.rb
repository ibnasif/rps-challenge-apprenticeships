require 'ai'

feature "can choose between rock, paper and scissors" do
  scenario "have the options" do
    sign_in_and_play
    expect(page).to have_button "rock"
    expect(page).to have_button "paper"
    expect(page).to have_button "scissors"
  end

  scenario "be able to choose rock and have confirmation" do
    sign_in_and_play
    click_button 'rock'
    expect(page).to have_content "you chose: rock"
  end

  scenario "be able to choose scissors and have confirmation" do
    sign_in_and_play
    click_button 'scissors'
    expect(page).to have_content "you chose: scissors"
  end

  scenario "be able to choose paper and have confirmation" do
    sign_in_and_play
    click_button 'paper'
    expect(page).to have_content "you chose: paper"
  end



end

