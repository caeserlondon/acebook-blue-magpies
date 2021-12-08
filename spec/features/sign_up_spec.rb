require 'rails_helper'

RSpec.feature "Sign up", type: :feature do
  scenario "Page has sign up button" do
    visit "/"
    click_link "Sign up!"
    # fill_in "Email", with: "hello@example.com"
    # click_button "Submit"
    expect(page).to have_content("Sign up")
  end
end
