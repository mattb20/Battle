require "capybara/rspec"
require_relative "../../lib/app"

Capybara.app = App

feature "homepage displays 'Testing infrastructure working!'" do
  scenario "on visiting homepage" do
    visit("/")
    expect(page).to have_content("Testing infrastructure working!")
  end
end
