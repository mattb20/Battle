require "capybara/rspec"
require_relative "../../lib/app"

Capybara.app = App

# feature "homepage displays 'Testing infrastructure working!'" do
#   scenario "on visiting homepage" do
#     visit("/")
#     expect(page).to have_content("Testing infrastructure working!")
#   end

  feature "homepage gives forms for player to fill in names and submit them" do
    scenario "on visiting the homepage" do
      visit("/")
      expect(page).to have_field("player1name")
      expect(page).to have_field("player2name")
      fill_in 'player1name', with: "Jordan"
      fill_in 'player2name', with: "Matthew"
      click_button("Submit Player names")
      expect(page).to have_content "Jordan"
      expect(page).to have_content "Matthew"

    end


  end
