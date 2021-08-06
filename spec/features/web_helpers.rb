def sign_in_and_play
  visit ('/')
  fill_in 'name', with: "danyaal"
  click_button 'play'
end