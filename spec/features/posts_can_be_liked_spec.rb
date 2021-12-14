require 'rails_helper'

RSpec.feature "Posts can be liked", type: :feature do
  before(:each) do
    sign_up
    visit "/posts"
    new_post("Post 1", true)
  end

  scenario "User can click button to like a post" do
    expect(page).to have_button 'Like'
  end

  scenario "Amount of likes for a post are displayed" do
    5.times {click_button 'Like'}
    expect(page).to have_content '5 Likes'
  end
end
