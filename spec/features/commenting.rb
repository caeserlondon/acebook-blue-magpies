def new_comment(message)
  fill_in "comment[comment_body]", with: message
  click_button "Create Comment"
end
