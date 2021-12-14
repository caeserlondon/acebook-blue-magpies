require 'rails_helper'

RSpec.feature "", type: :feature do
  scenario "users can post on their own walls" do
    sign_up
    user = User.first
    visit "/users/#{user.id}"
    expect(page).to have_content 'New post'
  end
end