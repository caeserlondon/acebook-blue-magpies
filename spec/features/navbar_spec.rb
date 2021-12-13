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
    check_link_path("Login", '/login')
    check_link_path("Sign up", '/users/new')
    check_link_path("Posts", '/posts')
  end

  scenario "navbar Profile link goes to logged-in user's profile" do
    sign_up
    log_in
    user = User.first
    check_link_path("Profile", "/users/#{user.id}")
    expect(page).to have_content user.name
  end

  def check_link_path(link, path)
    click_link link
    expect(current_path).to eq path
  end
end