require 'rails_helper'

feature 'User signs in' do
  Given(:user) { FactoryGirl.create(:user) }

  context 'with valid credentials' do
    When  { sign_in_with(user.email, user.password) }

    Then  { current_path == root_path }
    Then  { page.should have_content user.email }
  end

  context 'with invalid email' do
    When  { sign_in_with('invalid', user.password) }

    Then  { page.should have_content 'Invalid credentials'}
    Then  { page.should_not have_content user.email}
  end

  context 'with invalid password' do
    When  { sign_in_with(user.email, 'invalid') }

    Then  { page.should have_content 'Invalid credentials'}
    Then  { page.should_not have_content user.email}
  end

  context 'with empty password' do
    When  { sign_in_with(user.email, '') }

    Then  { page.should have_content 'Invalid credentials'}
    Then  { page.should_not have_content user.email}
  end
end
