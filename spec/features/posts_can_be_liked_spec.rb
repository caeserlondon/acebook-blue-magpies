require 'rails_helper'

RSpec.feature "Posts can be liked", type: :feature do
  scenario "User can click button to like a post" do
    visit "/posts"
    click_link "New post"
    fill_in "Message", with: "Post 1"
    click_button "Submit"
    click_link "Post 1"
    expect(page).to have_button 'Like'
  end

  scenario "Amount of likes for a post are displayed" do
    visit "/posts"
    click_link "New post"
    fill_in "Message", with: "Post 1"
    click_button "Submit"
    click_link "Post 1"
    click_button 'Like'
    expect(page).to have_content '1 Like'
    click_button 'Like'
    expect(page).to have_content '2 Likes'
  end
end
