RSpec.feature "", type: :feature do
    scenario "can comment on post" do
      sign_up
      log_in
      visit "/posts"
      new_post("Post 1", true)
      expect(page).to have_content 'Post 1'
      expect(page).to have_button 'Create Comment'
    end

    scenario "comments show below a post" do
      sign_up
      log_in
      visit "/posts"
      new_post("Post 1", true)
      new_comment("What a lovely post! :)")
      expect(page).to have_content 'What a lovely post! :)'
    end
  end