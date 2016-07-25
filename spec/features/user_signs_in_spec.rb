require 'rails_helper'

feature 'User signs in' do
  scenario 'with valid credentials' do
    user = FactoryGirl.create(:user)

    visit login_path

    page.should_not have_content 'Sign Out'

    fill_in 'session[email]', with: user.email
    fill_in 'session[password]', with: user.password
    click_on 'Sign In'

    page.should have_content 'Sign Out'
    current_path.should eq root_path
  end
end
