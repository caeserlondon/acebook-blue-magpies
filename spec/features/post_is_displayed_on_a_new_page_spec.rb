require 'rails_helper'
# require './spec/helpers/post_helper'

# class ProfileControllerTest < ActionDispatch::IntegrationTest

RSpec.feature "", type: :feature do
  scenario "Post has its own page" do
    visit "/posts"
    click_link "New post"
    fill_in "Message", with: "Post 1"
    click_button "Submit"
    click_link "Post 1"
    expect(page).to have_content 'Post 1'
 
  end
end






  
