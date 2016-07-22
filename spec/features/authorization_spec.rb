require 'rails_helper'

feature 'Authorization' do
  scenario 'Visitor visits root page' do
    visit root_path

    expect(current_path).to eq(login_path)
  end
end
