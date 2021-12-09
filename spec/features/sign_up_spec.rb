require 'rails_helper'

RSpec.feature "Sign up", type: :feature do
  before(:each) do
    visit "/"
    click_link "Sign up!"
  end

  let (:error_pw_short) { "Password is too short (minimum is 8 characters)" }
  let (:error_pw_long) { "Password is too long (maximum is 20 characters)" }
  let (:error_em_inv) { "Email is invalid" }

  scenario "Landing page has a sign up button and information-entry fields" do
    expect(page).to have_content("Sign up")
    expect(page).to have_content("Name")
    expect(page).to have_content("Email")
    expect(page).to have_content("Password")
  end

  scenario "If no fields are filled out, displays the appropriate error messages" do
    click_button "Enter details"
    expect(page).to have_content("Name can't be blank")
    expect(page).to have_content(error_em_inv)
    expect(page).to have_content(error_pw_short)
  end

  scenario "Password can't be too long or too short" do
    test_field("Password", "abcdefghijklmnopqrstuvwxyz", error_pw_long)
    test_field("Password", "hi", error_pw_short)
    test_field("Password", "hellothere", error_pw_short, false)
  end

  scenario "Email must be correctly formatted" do
    test_field("Email", "higmail.com", error_em_inv)
    test_field("Email", "hi@gmail.com", error_em_inv, false)
  end

  scenario "Creates a new user and returns to welcome page if all details are valid" do
    fill_in "Name", with: "Rudolph"
    fill_in "Email", with: "rudolph@christmas.com"
    fill_in "Password", with: "shinynose12"
    expect { click_button "Enter details"}.to change { User.count }.by(1)
    expect(page).to have_content("Welcome")
  end

  def test_field(field, with_text, expectation = null, expected = true)
    fill_in field, with: with_text
    click_button "Enter details"
    expect(page.has_content?(expectation)).to eq expected
  end
end