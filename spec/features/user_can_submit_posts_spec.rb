require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  scenario "Can submit posts and view them" do
    sign_up
    log_in
    visit "/posts"
    new_post("Hello, world!")
    expect(page).to have_content("Hello, world!")
  end
end
