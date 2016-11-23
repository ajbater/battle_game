require 'spec_helper'

RSpec.feature "Make HP visible", :type => :feature do
    scenario "Players see each others' hit points" do
      visit "/"

      fill_in "player1", :with => "Amanda"
      fill_in "player2", :with => "Pea"
      click_button "Submit"

      expect(page).to have_content("Pea's HP: 20" )
    end
  end
