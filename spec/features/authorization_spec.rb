require 'rails_helper'

feature 'Authorization' do
  scenario 'Visitor visits root page' do
    visit root_path

    current_path.should eq login_path
  end
end
