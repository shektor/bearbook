RSpec.feature "Log out", type: :feature do
  let(:first_name) { 'Bob' }
  let(:last_name) { 'Geldof' }
  let(:email) { 'its.me@bobgeldof.com' }
  let(:password) { 'bob123' }

  scenario "user can log out after they have logged in" do
    sign_up
    log_in
    visit('/posts')
    click_link('Logout')
    expect(page).to have_selector("input[type=submit][value='Log in']")
  end
end
