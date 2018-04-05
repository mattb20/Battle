def sign_in_and_play
  visit("/")
  fill_in 'player1name', with: "Jordan"
  fill_in 'player2name', with: "Matthew"
  click_button("Submit Player names")
end
