require 'rails_helper'

feature 'Visitor signs up' do
  Given(:user) { FactoryGirl.build(:user)}

  context 'with valid credentials' do
    When { sign_up_with(user.email, user.password, user.password) }

    Then { User.count == 1 }
    Then { current_path == root_path }
    Then { page.should have_content user.email }
    And  { page.should_not have_content 'Sign In' }
  end

  context 'with invalid email' do
    When { sign_up_with('invalid', user.password, user.password) }

    Then { User.count == 0 }
    Then { page.should have_content 'error' }
    And  { page.should_not have_content user.email }
  end

  context 'with empty password' do
    When { sign_up_with(user.email, '', '') }

    Then { User.count == 0 }
    Then { page.should have_content 'error' }
    And  { page.should_not have_content user.email }
  end

  context 'with wrong password confirmation' do
    When { sign_up_with(user.email, user.password, 'invalid') }

    Then { User.count == 0 }
    Then { page.should have_content 'error' }
    And  { page.should_not have_content user.email }
  end
end
