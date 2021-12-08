require 'rails_helper'

RSpec.feature "", type: :feature do
  scenario "Posts are displayed with newest first" do
    visit "/posts"
    click_link "New post"
    fill_in "Message", with: "Post 1"
    click_button "Submit"
    click_link "New post"
    fill_in "Message", with: "Post 2"
    click_button "Submit"
    expect(page.find('li:nth-child(1)')).to have_content 'Post 2'
    expect(page.find('li:nth-child(2)')).to have_content 'Post 1'
  end
end
