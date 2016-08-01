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

feature 'Create thought' do
  Given(:user) { FactoryGirl.create(:user) }
  Given { sign_in_with(user.email, user.password) }
  Given(:thought) { FactoryGirl.build(:thought) }

  context 'with valid data' do
    When { create_thought_with(thought.title, thought.description)}

    Then { page.should have_content thought.title }
    And  { page.should have_content thought.description }
    And  { Thought.count == 1 }
  end

  context 'with invalid title' do
    When { create_thought_with('', thought.description)}

    Then { page.should have_content 'error' }
    And  { page.should_not have_content thought.title }
    And  { Thought.count == 0 }
  end

  def create_thought_with(title,description)
    click_on 'Add Thought'
    fill_in 'thought[title]', with: title
    fill_in 'thought[description]', with: description
    click_on 'Create Thought'
  end
end
