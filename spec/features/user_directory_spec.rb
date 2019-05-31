require 'rails_helper'
require 'feature_test_helper'

RSpec.feature 'User Directory', type: :feature do
  let(:first_name) { 'Bob' }
  let(:last_name) { 'Geldof' }
  let(:email) { 'its.me@bobgeldof.com' }
  let(:password) { 'bob123' }

  scenario "Users can see a directory of users" do
    sign_up
    log_in
    click_link "Users"
    expect(page).to have_content("User Directory")
  end

  scenario "Users can navigate to other users walls through the directory" do
    sign_up
    log_in
    click_link "Logout"
    click_link "Sign up now!"

    fill_in('user[first_name]', with: "bert")
    fill_in('user[last_name]', with: "muppet")
    fill_in('user[email]', with: "bert@muppet.com")
    fill_in('user[password]', with: "bert")
    click_button('Signup')

    fill_in('session[email]', with: "bert@muppet.com")
    fill_in('session[password]', with: "bert")
    click_button('Log in')

    click_link "Users"
    click_link "its.me@bobgeldof.com"
    expect(page).to have_content("Bob Geldof")
  end

end
