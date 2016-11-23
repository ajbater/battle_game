require 'spec_helper'

RSpec.feature "Attack", :type => :feature do
  scenario "Player 1 attacks Player 2" do

    sign_in_and_play
    click_button("Attack!")
    #expect {click_button("Attack!")}.to_change(@hp).by(-5)
    expect(page).to have_text("Amanda attacked Pea!!")
  end
end
