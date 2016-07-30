require 'rails_helper'

feature 'List thoughts' do
  Given(:user) { FactoryGirl.create(:user) }
  Given { sign_in_with(user.email, user.password) }

  context 'when user is owner' do
    Given!(:thoughts) { FactoryGirl.create_list(:thought, 2, user: user) }

    When { visit root_path }

    Then { page.should have_content thoughts.first.title }
    And  { page.should have_content thoughts.last.title }
  end

  context 'when user is not owner' do
    Given!(:thought) { FactoryGirl.create(:thought, user: nil) }

    When { visit root_path }

    Then { page.should_not have_content thought.title }
    And  { page.should_not have_content thought.title }
  end
end
