require "capybara/rspec"
require_relative "../../lib/app"
require_relative "../../spec/features/web_helpers"

Capybara.app = App

# feature "homepage displays 'Testing infrastructure working!'" do
#   scenario "on visiting homepage" do
#     visit("/")
#     expect(page).to have_content("Testing infrastructure working!")
#   end

  feature "Player names can be submitted" do
    scenario "homepage has options for player names to be submitted" do
      # sign_in_and_play
      visit("/")
      expect(page).to have_field("player1name")
      expect(page).to have_field("player2name")
      fill_in 'player1name', with: "Jordan"
      fill_in 'player2name', with: "Matthew"
      click_button("Submit Player names")
      expect(page).to have_content "Jordan"
      expect(page).to have_content "Matthew"

    end

    feature "users health points are displayed" do
      scenario "just after entering player names" do
      sign_in_and_play
      visit ("/play")
      expect(page).to have_content $player1hitpoints.to_s
    end
    end

    feature "player 1 attacks player 2" do


      scenario "player 1 can see a button to attack player 2" do
        sign_in_and_play
        visit("/play")
        expect(page).to have_button("player2attack")

      end

      scenario "clicks button to attack player 2 and receives a confirmation" do
      sign_in_and_play
      visit("/play")
      click_button("player2attack")
      visit("/attack2")


      expect(page).to have_content 'Jordan attacked Matthew'

      end
      scenario "player 2 health points are reduced by 10" do

      end


    end


  end
