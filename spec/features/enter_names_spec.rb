require 'spec_helper'

RSpec.feature "Add player names", :type => :feature do
    scenario "Players submit their names" do

      sign_in_and_play

      message = "Welcome Amanda and Pea, are you ready to battle?"
      expect(page).to have_text(message)
    end
  end
