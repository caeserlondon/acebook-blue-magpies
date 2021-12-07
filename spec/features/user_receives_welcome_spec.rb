require 'rails_helper'

RSpec.feature "Landing page", type: :feature do
  scenario "User receives a welcome message on the home page" do
    visit "/"
    expect(page).to have_content("Welcome to")
  end
end