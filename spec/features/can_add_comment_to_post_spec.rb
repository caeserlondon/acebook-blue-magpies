RSpec.feature "", type: :feature do
    scenario "can comment on post" do
      visit "/posts"
      click_link "New post"
      fill_in "Message", with: "Post 1"
      click_button "Submit"
      click_link "Post 1"
      expect(page).to have_content 'Post 1'
      expect(page).to have_button 'Create Comment'
    end

    scenario "comments show below a post" do
      visit "/posts"
      click_link "New post"
      fill_in "Message", with: "Post 1"
      click_button "Submit"
      click_link "Post 1"
      fill_in "comment[comment_body]", with: "What a lovely post! :)"
      click_button "Create Comment"
      expect(page).to have_content 'What a lovely post! :)'
    end
  end