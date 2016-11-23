def sign_in_and_play
  visit "/"
  fill_in "player1", :with => "Amanda"
  fill_in "player2", :with => "Pea"
  click_button "Submit"
end
