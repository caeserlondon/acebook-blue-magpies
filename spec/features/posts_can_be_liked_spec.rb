require 'rails_helper'

RSpec.feature "Posts can be liked", type: :feature do
  scenario "User can click button to like a post" do
    visit "/posts"
    new_post("Post 1", true)
    expect(page).to have_button 'Like'
  end

  scenario "Amount of likes for a post are displayed" do
    visit "/posts"
    new_post("Post 1", true)
    5.times {click_button 'Like'}
    expect(page).to have_content '5 Likes'
  end
end
