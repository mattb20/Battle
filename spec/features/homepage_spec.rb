require "capybara/rspec"
require_relative "../../lib/app"
require_relative "../../spec/features/web_helpers"

Capybara.app = App

# feature "homepage displays 'Testing infrastructure working!'" do
#   scenario "on visiting homepage" do
#     visit("/")
#     expect(page).to have_content("Testing infrastructure working!")
#   end

  feature "homepage gives forms for player to fill in names and submit them" do
    scenario "on visiting the homepage" do
      sign_in_and_play
      # visit("/")
      # expect(page).to have_field("player1name")
      # expect(page).to have_field("player2name")
      # fill_in 'player1name', with: "Jordan"
      # fill_in 'player2name', with: "Matthew"
      # click_button("Submit Player names")
      expect(page).to have_content "Jordan"
      expect(page).to have_content "Matthew"

    end

    feature "users health points are displayed" do
      scenario "just after entering player names" do
      sign_in_and_play
      visit ("/play")
      expect(page).to have_content "100"
    end
    end

    feature "player 1 attacks player 2" do
      scenario "there are options for both players to attack each other" do
        sign_in_and_play
        expect(page).to have_field("Attack")


      end
    end


  end
