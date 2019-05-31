require 'rails_helper'

RSpec.feature "User Wall Post", type: :feature do
  let(:first_name) { 'Bob' }
  let(:last_name) { 'Geldof' }
  let(:email) { 'its.me@bobgeldof.com' }
  let(:password) { 'bob123' }

  scenario "Can submit posts to a users wall and view them" do
    visit "/users/new"
    fill_in('user[first_name]', with: 'Yaddy')
    fill_in('user[last_name]', with: 'Daddy')
    fill_in('user[email]', with: 'yaddy@daddy.com')
    fill_in('user[password]', with: 'yad123')
    click_button('Signup')
    
    sign_up
    log_in
    visit('/users')
    click_link('yaddy@daddy.com')
    fill_in "post[message]", with: "Hello, world!"
    click_button("Submit")
    visit('/users')
    click_link('yaddy@daddy.com')
    expect(page).to have_content("Hello, world!")
  end

  scenario "Can submit posts to a users wall and not see them on posts index" do
    visit "/users/new"
    fill_in('user[first_name]', with: 'Yaddy')
    fill_in('user[last_name]', with: 'Daddy')
    fill_in('user[email]', with: 'yaddy@daddy.com')
    fill_in('user[password]', with: 'yad123')
    click_button('Signup')
    
    sign_up
    log_in
    visit('/users')
    click_link('yaddy@daddy.com')
    fill_in "post[message]", with: "Hello, world!"
    click_button("Submit")
    visit('/posts')
    expect(page).to have_no_content("Hello, world!")
  end
end