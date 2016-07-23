require 'rails_helper'

feature 'Visitor signs up' , type: :feature do
  scenario 'with valid credentials' do
    sign_up_with('email@example.com', 'password', 'password')

    User.count.should be 1
    current_path.should eq root_path
    page.should have_content 'Sign Out'
  end

  scenario 'with invalid email' do
    sign_up_with('example.com', 'password', 'password')

    User.count.should be 0
    page.should have_content 'error'
  end

  scenario 'with empty password' do
    sign_up_with('email@example.com', '', '')

    User.count.should be 0
    page.should have_content 'error'
  end

  scenario 'with wrong password confirmation' do
    sign_up_with('email@example.com', '1', '2')

    User.count.should be 0
    page.should have_content 'error'
  end
end
