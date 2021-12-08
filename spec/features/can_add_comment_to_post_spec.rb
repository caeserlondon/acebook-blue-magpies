RSpec.feature "", type: :feature do
    scenario "can comment on post" do
      visit "/posts"
      click_link "New post"
      fill_in "Message", with: "Post 1"
      click_button "Submit"
      click_link "Post 1"
      expect(page).to have_content 'Post 1'
      expect(page).to have_content 'Submit comment'
   
    end
  end