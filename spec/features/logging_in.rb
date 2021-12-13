def log_in
  click_link "Login"
  fill_in "email", with: "rudolph@christmas.com"
  fill_in "password", with: "shinynose12"
  click_button "Log In"
end