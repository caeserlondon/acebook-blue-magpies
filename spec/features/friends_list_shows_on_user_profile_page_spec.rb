require 'rails_helper'

RSpec.feature "", type: :feature do
  scenario "list of other users show on user profile page" do
    sign_up_multiple
    p user = User.first
    p user.id
    visit "/users/#{user.id}"
    expect(page).to have_content 'Rudolph'
    expect(page).to have_content 'Simon'
  end
end