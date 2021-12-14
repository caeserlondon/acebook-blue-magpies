require 'rails_helper'

RSpec.feature "", type: :feature do
  scenario "Posts are displayed with newest first on user profile page" do
    sign_up
    log_in
    p user = User.first
    p user.id
    visit "/posts"
    new_post("Post 1")
    visit "/users/#{user.id}"
    expect(page).to have_content 'Post 1'
  end
end
