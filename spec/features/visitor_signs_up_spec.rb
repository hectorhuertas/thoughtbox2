require 'rails_helper'

feature 'Visitor signs up' do
  scenario 'with valid credentials' do
    visit root_path

    current_path.should eq login_path

    click_on 'Sign Up'

    current_path.should eq signup_path

    fill_in 'user[email]', with: 'email@example.com'
    fill_in 'user[password]', with: 'password'
    fill_in 'user[password_confirmation]', with: 'password'
    click_on 'Sign Up'

    User.count.should be 1
    current_path.should eq root_path
    page.should have_content 'Sign Out'
  end
end
