require 'rails_helper'

feature 'Visitor authorization' do
  scenario 'is redirected to login' do
    visit root_path
    current_path.should eq login_path
  end
end
