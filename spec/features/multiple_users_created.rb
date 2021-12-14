def sign_up_multiple(then_login = true)
  visit "/"
  click_link "Sign up"
  fill_in "Name", with: "Rudolph"
  fill_in "Email", with: "rudolph@christmas.com"
  fill_in "Password", with: "shinynose12"
  click_button "Enter details"
  click_link "Log out"

  visit "/"
  click_link "Sign up"
  fill_in "Name", with: "Simon"
  fill_in "Email", with: "simon@test.com"
  fill_in "Password", with: "shinynose12"
  click_button "Enter details"
  click_link "Log out"

  visit "/"
  click_link "Sign up"
  fill_in "Name", with: "Jacob"
  fill_in "Email", with: "jacob@test.com"
  fill_in "Password", with: "shinynose12"
  click_button "Enter details"
  log_in if then_login
end