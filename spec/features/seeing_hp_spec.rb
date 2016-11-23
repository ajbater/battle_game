require 'spec_helper'

RSpec.feature "Make HP visible", :type => :feature do
    scenario "Players see each others' hit points" do

      sign_in_and_play

      expect(page).to have_content("Pea's HP: 20" )
    end
  end
