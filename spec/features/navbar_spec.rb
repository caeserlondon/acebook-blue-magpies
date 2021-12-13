RSpec.feature "", type: :feature do
  before(:each) do
    visit "/"
  end

  scenario "navbar lists all necessary links" do
    expect(page).to have_content 'Login'
    expect(page).to have_content 'Sign up'
    expect(page).to have_content 'Posts'
    expect(page).to have_content 'Profile'
  end

  scenario "navbar links takes user to appropriate page" do
    click_link "Login"
    expect(current_path).to eq '/login'
    click_link "Sign up"
    expect(current_path).to eq '/users/new'
    click_link "Posts"
    expect(current_path).to eq '/posts'
    sign_up
    log_in
    click_link "Profile"
    expect(current_path).to eq '/users'
  end
end