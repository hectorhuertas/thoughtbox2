require 'rails_helper'

feature 'Thought filter' do
  Given(:user) { FactoryGirl.create(:user) }
  Given!(:thoughts) { FactoryGirl.create_list(:thought, 2, user: user) }
  Given { sign_in_with user.email, user.password }

  context 'filter by title' do
    When { pending 'Javascript testing'}
    When { fill_in 'filter', with: thoughts.first.title }

    Then { page.should have_content thoughts.first.title }
    And  { page.should_not have_content thoughts.last.title }
  end
end
