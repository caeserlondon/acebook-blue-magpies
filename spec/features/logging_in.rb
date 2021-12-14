def log_in
  visit '/login'
  fill_in "email", with: "rudolph@christmas.com"
  fill_in "password", with: "shinynose12"
  click_button "Log In"
end