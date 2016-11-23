require 'spec_helper'

RSpec.feature "Add player names", :type => :feature do
    scenario "Players submit their names" do
      visit "/"

      fill_in "player1", :with => "Amanda"
      fill_in "player2", :with => "Pea"
      click_button "Submit"

      message = "Welcome Amanda and Pea, are you ready to battle?"
      expect(page).to have_text(message)
    end
  end
